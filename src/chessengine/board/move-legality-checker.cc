#include "chessboard.hh"

namespace board {

    bool MoveLegalityChecker::is_move_legal_QUEEN(Chessboard& chessboard, Move& move) {

        bool b = is_move_legal_BISHOP(chessboard, move);
        if (b)
            return true;
        if (move.start_position_.rank_get() != move.end_position_.rank_get() && move.start_position_.file_get() != move.end_position_.file_get())
            return false;
        b = is_move_legal_ROOK(chessboard, move);
        return b;
    }

    //TODO: use chessboard to assess legality (currently not using it)
    bool MoveLegalityChecker::is_move_legal_KING(Chessboard& chessboard, Move& move) {
        auto king = chessboard.read(move.start_position_);

        Position white_a_rook(File::A, Rank::ONE);
        Position white_h_rook(File::H, Rank::ONE);
        Position black_a_rook(File::A, Rank::EIGHT);
        Position black_h_rook(File::H, Rank::EIGHT);

        if (move.is_king_castling_ || move.is_queen_castling_) {
            auto rook = chessboard.whose_turn_is_it() == Color::WHITE ? 
                    chessboard.read(move.is_king_castling_ ? white_h_rook : white_a_rook)
                    : chessboard.read(move.is_queen_castling_ ? black_h_rook : black_a_rook);
            if (!rook.has_value()) {
                return false;
            }
            if (king.value().has_already_moved_ || rook.value().has_already_moved_) {
                return false;
            }
            if (chessboard.whose_turn_is_it() == Color::WHITE && move.is_king_castling_ && chessboard.did_white_king_castling_) {
                return false;
            }
            if (chessboard.whose_turn_is_it() == Color::WHITE && move.is_queen_castling_ && chessboard.did_white_queen_castling_) {
                return false;
            }
            if (chessboard.whose_turn_is_it() == Color::BLACK && move.is_king_castling_ && chessboard.did_black_king_castling_) {
                return false;
            }
            if (chessboard.whose_turn_is_it() == Color::BLACK && move.is_queen_castling_ && chessboard.did_black_queen_castling_) {
                return false;
            }
            //check verification will be in the encapsulating function
            return true;
        }

        auto start_file = move.start_position_.file_get();
        auto start_rank = move.start_position_.rank_get();
        auto end_file = move.end_position_.file_get();
        auto end_rank = move.end_position_.rank_get();

        return abs((int)start_file - (int)end_file) <= 1 && abs((int)start_rank - (int)end_rank) <= 1;
    }

    //TODO: use chessboard to assess legality (currently not using it)
    bool MoveLegalityChecker::is_move_legal_KNIGHT(Chessboard&, Move& move){

        auto startFile = move.start_position_.file_get();
        auto startRank = move.start_position_.rank_get();
        auto endFile = move.end_position_.file_get();
        auto endRank = move.end_position_.rank_get();

        if (startFile  - 1 == endFile && startRank - 2 == endRank)
            return true;
        if (startFile  - 2 == endFile && startRank - 1 == endRank)
            return true;
        if (startFile  - 2 == endFile && startRank + 1 == endRank)
            return true;
        if (startFile  - 1 == endFile && startRank  + 2 == endRank)
            return true;
        if (startFile  + 2 == endFile && startRank - 1 == endRank)
            return true;
        if (startFile  + 1 == endFile && startRank - 2 == endRank)
            return true;
        if (startFile  + 2 == endFile && startRank + 1 == endRank)
            return true;

        return startFile + 1 == endFile && startRank + 2 == endRank;
    }

    bool MoveLegalityChecker::is_move_legal_BISHOP(Chessboard& b, Move& move) {
        int Fi = 1;
        int Ri = 1;
        bool bo = true;
        if (move.start_position_.file_get() < move.end_position_.file_get() && move.start_position_.rank_get() < move.end_position_.rank_get())
        {
            while (true)
            {
                if (move.start_position_.file_get() + Fi == File::OUTOFBOUNDS || move.start_position_.rank_get() + Ri == Rank::OUTOFBOUNDS)
                {
                    bo = false;
                    break;
                }
                if (move.start_position_.file_get() + Fi == move.end_position_.file_get() &&
                    move.start_position_.rank_get() + Ri == move.end_position_.rank_get())
                {return true;}
                if (b.board_((int)move.start_position_.file_get() + Fi, (int)move.start_position_.rank_get() + Ri).has_value())
                    return false;
                Fi += 1;
                Ri += 1;

            }
        }
        else if (move.start_position_.file_get() < move.end_position_.file_get() && move.start_position_.rank_get() > move.end_position_.rank_get())
        {
            while (true)
            {
                if (move.start_position_.file_get() + Fi == move.end_position_.file_get() &&
                    move.start_position_.rank_get() - Ri == move.end_position_.rank_get())
                {return true;}
                if (move.start_position_.file_get() + Fi == File::OUTOFBOUNDS || move.start_position_.rank_get() - Ri == Rank::OUTOFBOUNDS)
                {
                    bo = false;
                    break;
                }
                if (b.board_((int)move.start_position_.file_get() + Fi, (int)move.start_position_.rank_get() - Ri).has_value())
                    return false;
                Fi += 1;
                Ri += 1;
            }
        }

        else if (move.start_position_.file_get() > move.end_position_.file_get() && move.start_position_.rank_get() < move.end_position_.rank_get())
        {
            while (true)
            {
                if (move.start_position_.file_get() - Fi == move.end_position_.file_get() &&
                    move.start_position_.rank_get() + Ri == move.end_position_.rank_get())
                {return true;}
                if (move.start_position_.file_get() - Fi == File::OUTOFBOUNDS || move.start_position_.rank_get() + Ri == Rank::OUTOFBOUNDS)
                {
                    bo = false;
                    break;
                }
                if (b.board_((int)move.start_position_.file_get() - Fi, (int)move.start_position_.rank_get() + Ri).has_value())
                    return false;
                Fi += 1;
                Ri += 1;
            }
        }
        else
        {
            while (true)
            {
                if (move.start_position_.file_get() - Fi == move.end_position_.file_get() &&
                    move.start_position_.rank_get() - Ri == move.end_position_.rank_get())
                {return true;}
                if (move.start_position_.file_get() - Fi == File::OUTOFBOUNDS || move.start_position_.rank_get() - Ri == Rank::OUTOFBOUNDS)
                {
                    bo = false;
                    break;
                }
                if (b.board_((int)move.start_position_.file_get() - Fi, (int)move.start_position_.rank_get() - Ri).has_value())
                {
                    return false;
                }

                Fi += 1;
                Ri += 1;
            }
        }
        return bo;
    }

    bool MoveLegalityChecker::is_move_legal_PAWN(Chessboard& b, Move& move) {

        //TODO: the position hold in b.en_passant_target_square_ (if any) should be a valid capture position, even if it is empty. In this case, the captured piece
        //is not on move.end_position_ so we will have to handle this case.

        //std::cout << "checking legality of pawn move: " + move.to_string() << "\n";
        int rank_direction = b.is_white_turn_ ? 1 : -1;
        Rank initial_rank = b.is_white_turn_ ? Rank::TWO : Rank::SEVEN;

        if (move.is_double_pawn_push_) {
            if (move.start_position_.rank_get() != initial_rank || move.is_capture_) {
                return false;
            }
            if (b.read(Position(move.start_position_.file_get(), move.start_position_.rank_get() + rank_direction)).has_value()) {
                return false;
            }
            return (move.start_position_.rank_get() + rank_direction * 2 == move.end_position_.rank_get() &&
                    move.start_position_.file_get() == move.end_position_.file_get());
        }
        else if (move.is_capture_) {
            if (move.start_position_.rank_get() + rank_direction != move.end_position_.rank_get()) {
                return false;
            }
            if (move.start_position_.file_get() + 1 != move.end_position_.file_get() && move.start_position_.file_get() - 1 != move.end_position_.file_get()) {
                return false;
            }
            if (b.read(move.end_position_) == std::nullopt && !move.is_en_passant_) {
                return false;
            }
        }
        else {
            return (move.start_position_.file_get() == move.end_position_.file_get() && move.start_position_.rank_get() + rank_direction == move.end_position_.rank_get());
        }
        return true;
    }

    bool MoveLegalityChecker::is_move_legal_ROOK(Chessboard& b, Move& move) {
        int Fi = 1;
        int Ri = 1;

        if (move.start_position_.file_get() < move.end_position_.file_get() && move.start_position_.rank_get() == move.end_position_.rank_get())
        {
            while (move.start_position_.file_get() + Fi != move.end_position_.file_get())
            {
                if (move.start_position_.file_get() + Fi == File::OUTOFBOUNDS)
                {
                    return false;
                }
                if (b.board_((int)move.start_position_.file_get() + Fi, (int)move.start_position_.rank_get()).has_value())
                    break;
                Fi += 1;
            }
            return move.start_position_.file_get() + Fi == move.end_position_.file_get();
        }

        else if (move.start_position_.file_get() > move.end_position_.file_get() && move.start_position_.rank_get() == move.end_position_.rank_get())
        {
            while (move.start_position_.file_get() - Fi != move.end_position_.file_get())
            {
                if (move.start_position_.file_get() - Fi == File::OUTOFBOUNDS)
                {
                    return false;
                }
                if (b.board_((int)move.start_position_.file_get() - Fi, (int)move.start_position_.rank_get()).has_value())
                    break;
                Fi += 1;
            }
            return move.start_position_.file_get() - Fi == move.end_position_.file_get();
        }

        else if (move.start_position_.file_get() == move.end_position_.file_get() && move.start_position_.rank_get() < move.end_position_.rank_get())
        {
            while (move.start_position_.rank_get() + Ri != move.end_position_.rank_get())
            {
                if (move.start_position_.rank_get() + Ri == Rank::OUTOFBOUNDS)
                {
                    return false;
                }
                if (b.board_((int)move.start_position_.file_get(), (int)move.start_position_.rank_get() + Ri).has_value())
                    break;
                Ri += 1;
            }
            return move.start_position_.rank_get() + Ri == move.end_position_.rank_get();
        }

        else
        {
            while (move.start_position_.rank_get() - Ri != move.end_position_.rank_get())
            {
                if (move.start_position_.rank_get() - Ri == Rank::OUTOFBOUNDS)
                {
                    return false;
                }
                if (b.board_((int)move.start_position_.file_get(), (int)move.start_position_.rank_get() - Ri).has_value()) {
                    break;
                }
                Ri += 1;
            }
            return move.start_position_.rank_get() - Ri == move.end_position_.rank_get();
        }
    }

    bool MoveLegalityChecker::is_move_legal(Chessboard& b, Move &move) {
        switch (move.piece_) {
            case PieceType::PAWN:
                return is_move_legal_PAWN(b, move);
            case PieceType::BISHOP:
                return is_move_legal_BISHOP(b, move);
            case PieceType::KNIGHT:
                return is_move_legal_KNIGHT(b, move);
            case PieceType::ROOK:
                return is_move_legal_ROOK(b, move);
            case PieceType::QUEEN:
                return is_move_legal_QUEEN(b, move);
            case PieceType::KING:
                return is_move_legal_KING(b, move);
            default:
                return false;
        }
    }

}
