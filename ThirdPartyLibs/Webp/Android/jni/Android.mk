LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE       := webp
LOCAL_CFLAGS       := -O3 -fshort-wchar -ffast-math -fomit-frame-pointer -DHAVE_MALLOC_H -DHAVE_PTHREAD -DWEBP_USE_THREAD -finline-functions -frename-registers -s -I..
LOCAL_CPPFLAGS     := -O3 -fshort-wchar -ffast-math -fomit-frame-pointer -DHAVE_MALLOC_H -DHAVE_PTHREAD -DWEBP_USE_THREAD -finline-functions -frename-registers -s -I..
LOCAL_CPP_FEATURES := # rtti exceptions
LOCAL_ARM_NEON     := true # force NEON usage for all files

LOCAL_SRC_FILES := \
   ../../src/dec/alpha_dec.c \
   ../../src/dec/buffer_dec.c \
   ../../src/dec/frame_dec.c \
   ../../src/dec/idec_dec.c \
   ../../src/dec/io_dec.c \
   ../../src/dec/quant_dec.c \
   ../../src/dec/tree_dec.c \
   ../../src/dec/vp8_dec.c \
   ../../src/dec/vp8l_dec.c \
   ../../src/dec/webp_dec.c \
   ../../src/demux/anim_decode.c \
   ../../src/demux/demux.c \
   ../../src/dsp/alpha_processing.c \
   ../../src/dsp/alpha_processing_mips_dsp_r2.c \
   ../../src/dsp/alpha_processing_neon.c \
   ../../src/dsp/alpha_processing_sse2.c \
   ../../src/dsp/alpha_processing_sse41.c \
   ../../src/dsp/cost.c \
   ../../src/dsp/cost_mips_dsp_r2.c \
   ../../src/dsp/cost_mips32.c \
   ../../src/dsp/cost_neon.c \
   ../../src/dsp/cost_sse2.c \
   ../../src/dsp/cpu.c \
   ../../src/dsp/dec.c \
   ../../src/dsp/dec_clip_tables.c \
   ../../src/dsp/dec_mips_dsp_r2.c \
   ../../src/dsp/dec_mips32.c \
   ../../src/dsp/dec_msa.c \
   ../../src/dsp/dec_neon.c \
   ../../src/dsp/dec_sse2.c \
   ../../src/dsp/dec_sse41.c \
   ../../src/dsp/enc.c \
   ../../src/dsp/enc_mips_dsp_r2.c \
   ../../src/dsp/enc_mips32.c \
   ../../src/dsp/enc_msa.c \
   ../../src/dsp/enc_neon.c \
   ../../src/dsp/enc_sse2.c \
   ../../src/dsp/enc_sse41.c \
   ../../src/dsp/filters.c \
   ../../src/dsp/filters_mips_dsp_r2.c \
   ../../src/dsp/filters_msa.c \
   ../../src/dsp/filters_neon.c \
   ../../src/dsp/filters_sse2.c \
   ../../src/dsp/lossless.c \
   ../../src/dsp/lossless_enc.c \
   ../../src/dsp/lossless_enc_mips_dsp_r2.c \
   ../../src/dsp/lossless_enc_mips32.c \
   ../../src/dsp/lossless_enc_msa.c \
   ../../src/dsp/lossless_enc_neon.c \
   ../../src/dsp/lossless_enc_sse2.c \
   ../../src/dsp/lossless_enc_sse41.c \
   ../../src/dsp/lossless_mips_dsp_r2.c \
   ../../src/dsp/lossless_msa.c \
   ../../src/dsp/lossless_neon.c \
   ../../src/dsp/lossless_sse2.c \
   ../../src/dsp/rescaler.c \
   ../../src/dsp/rescaler_mips_dsp_r2.c \
   ../../src/dsp/rescaler_mips32.c \
   ../../src/dsp/rescaler_msa.c \
   ../../src/dsp/rescaler_neon.c \
   ../../src/dsp/rescaler_sse2.c \
   ../../src/dsp/ssim.c \
   ../../src/dsp/ssim_sse2.c \
   ../../src/dsp/upsampling.c \
   ../../src/dsp/upsampling_mips_dsp_r2.c \
   ../../src/dsp/upsampling_msa.c \
   ../../src/dsp/upsampling_neon.c \
   ../../src/dsp/upsampling_sse2.c \
   ../../src/dsp/upsampling_sse41.c \
   ../../src/dsp/yuv.c \
   ../../src/dsp/yuv_mips_dsp_r2.c \
   ../../src/dsp/yuv_mips32.c \
   ../../src/dsp/yuv_neon.c \
   ../../src/dsp/yuv_sse2.c \
   ../../src/dsp/yuv_sse41.c \
   ../../src/enc/alpha_enc.c \
   ../../src/enc/analysis_enc.c \
   ../../src/enc/backward_references_cost_enc.c \
   ../../src/enc/backward_references_enc.c \
   ../../src/enc/config_enc.c \
   ../../src/enc/cost_enc.c \
   ../../src/enc/filter_enc.c \
   ../../src/enc/frame_enc.c \
   ../../src/enc/histogram_enc.c \
   ../../src/enc/iterator_enc.c \
   ../../src/enc/near_lossless_enc.c \
   ../../src/enc/picture_csp_enc.c \
   ../../src/enc/picture_enc.c \
   ../../src/enc/picture_psnr_enc.c \
   ../../src/enc/picture_rescale_enc.c \
   ../../src/enc/picture_tools_enc.c \
   ../../src/enc/predictor_enc.c \
   ../../src/enc/quant_enc.c \
   ../../src/enc/syntax_enc.c \
   ../../src/enc/token_enc.c \
   ../../src/enc/tree_enc.c \
   ../../src/enc/vp8l_enc.c \
   ../../src/enc/webp_enc.c \
   ../../src/mux/anim_encode.c \
   ../../src/mux/muxedit.c \
   ../../src/mux/muxinternal.c \
   ../../src/mux/muxread.c \
   ../../src/utils/bit_reader_utils.c \
   ../../src/utils/bit_writer_utils.c \
   ../../src/utils/color_cache_utils.c \
   ../../src/utils/filters_utils.c \
   ../../src/utils/huffman_encode_utils.c \
   ../../src/utils/huffman_utils.c \
   ../../src/utils/quant_levels_dec_utils.c \
   ../../src/utils/quant_levels_utils.c \
   ../../src/utils/random_utils.c \
   ../../src/utils/rescaler_utils.c \
   ../../src/utils/thread_utils.c \
   ../../src/utils/utils.c

include $(BUILD_STATIC_LIBRARY)
$(call import-module,android/cpufeatures)
