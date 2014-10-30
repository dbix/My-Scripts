#!/opt/local/bin/python2.7
import sys

sys.stdout.write("BYTE_ORDER=" + str(sys.byteorder) + "\n")
sys.stdout.write("MAX_INT=" + str(sys.max_int) + "\n")

sys.stdout.write("_CURRENT_FRAMES=" + str(sys._current_frames()) + "\n")
sys.stdout.write("DBL_EPSILON=" + str(sys.float_info.epsilon) + "\n")
sys.stdout.write("DBL_DIG=" + str(sys.float_info.dig) + "\n")
sys.stdout.write("DBL_MANT_DIG=" + str(sys.float_info.mant_dig) + "\n")
sys.stdout.write("DBL_MAX=" + str(sys.float_info.max) + "\n")
sys.stdout.write("DBL_MAX_EXP=" + str(sys.float_info.max_exp) + "\n")
sys.stdout.write("DBL_MAX_10_EXP=" + str(sys.float_info.max_10_exp) + "\n")
sys.stdout.write("DBL_MIN=" + str(sys.float_info.min) + "\n")
sys.stdout.write("DBL_MIN_10_EXP=" + str(sys.float_info.min_10_exp) + "\n")
sys.stdout.write("FLT_RADIX=" + str(sys.float_info.radix) + "\n")
sys.stdout.write("FLT_ROUNDS=" + str(sys.float_info.rounds) + "\n")
quit()