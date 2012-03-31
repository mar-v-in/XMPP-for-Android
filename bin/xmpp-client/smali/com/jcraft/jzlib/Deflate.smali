.class public final Lcom/jcraft/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DEF_MEM_LEVEL:I = 0x8

.field private static final DYN_TREES:I = 0x2

.field private static final D_CODES:I = 0x1e

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final HEAP_SIZE:I = 0x23d

.field private static final INIT_STATE:I = 0x2a

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_MATCH:I = 0x102

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFAULT_COMPRESSION:I = -0x1

.field private static final Z_DEFAULT_STRATEGY:I = 0x0

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FILTERED:I = 0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_HUFFMAN_ONLY:I = 0x2

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_UNKNOWN:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final config_table:[Lcom/jcraft/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lcom/jcraft/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lcom/jcraft/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field good_match:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:I

.field l_desc:Lcom/jcraft/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field method:B

.field nice_match:I

.field noheader:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lcom/jcraft/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/jcraft/jzlib/Deflate$Config;

    sput-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 70
    sget-object v6, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v0, Lcom/jcraft/jzlib/Deflate$Config;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 71
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x1

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 72
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v10

    .line 73
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x3

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 75
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v9

    .line 76
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x5

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 77
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x6

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 78
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x7

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 79
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v11

    .line 80
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v8, 0x9

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream end"

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string v2, "file error"

    aput-object v2, v0, v1

    const-string v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "buffer error"

    aput-object v2, v0, v1

    const-string v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x23d

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 261
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 262
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 265
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 268
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 276
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 321
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 322
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 323
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 324
    return-void
.end method

.method static smaller([SII[B)Z
    .locals 4
    .parameter "tree"
    .parameter "n"
    .parameter "m"
    .parameter "depth"

    .prologue
    .line 406
    mul-int/lit8 v2, p1, 0x2

    aget-short v1, p0, v2

    .line 407
    .local v1, tn2:S
    mul-int/lit8 v2, p2, 0x2

    aget-short v0, p0, v2

    .line 408
    .local v0, tm2:S
    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    aget-byte v2, p3, p1

    aget-byte v3, p3, p2

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method _tr_align()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 603
    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 604
    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    invoke-virtual {p0, v4, v0}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 606
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 612
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 613
    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 614
    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    invoke-virtual {p0, v4, v0}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 615
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 617
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 618
    return-void
.end method

.method _tr_flush_block(IIZ)V
    .locals 8
    .parameter "buf"
    .parameter "stored_len"
    .parameter "eof"

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 852
    const/4 v0, 0x0

    .line 855
    .local v0, max_blindex:I
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    if-lez v5, :cond_3

    .line 857
    iget-byte v5, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->set_data_type()V

    .line 860
    :cond_0
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v5, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 862
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v5, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 869
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->build_bl_tree()I

    move-result v0

    .line 872
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v1, v5, 0x3

    .line 873
    .local v1, opt_lenb:I
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v2, v5, 0x3

    .line 875
    .local v2, static_lenb:I
    if-gt v2, v1, :cond_1

    move v1, v2

    .line 881
    :cond_1
    :goto_0
    add-int/lit8 v5, p2, 0x4

    if-gt v5, v1, :cond_4

    const/4 v5, -0x1

    if-eq p1, v5, :cond_4

    .line 888
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 903
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 905
    if-eqz p3, :cond_2

    .line 906
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    .line 908
    :cond_2
    return-void

    .line 878
    .end local v1           #opt_lenb:I
    .end local v2           #static_lenb:I
    :cond_3
    add-int/lit8 v2, p2, 0x5

    .restart local v2       #static_lenb:I
    move v1, v2

    .restart local v1       #opt_lenb:I
    goto :goto_0

    .line 890
    :cond_4
    if-ne v2, v1, :cond_6

    .line 891
    if-eqz p3, :cond_5

    :goto_2
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3, v7}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 892
    sget-object v3, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    sget-object v4, Lcom/jcraft/jzlib/StaticTree;->static_dtree:[S

    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 891
    goto :goto_2

    .line 895
    :cond_6
    if-eqz p3, :cond_7

    :goto_3
    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3, v7}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 896
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget v3, v3, Lcom/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget v4, v4, Lcom/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/jcraft/jzlib/Deflate;->send_all_trees(III)V

    .line 897
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_7
    move v3, v4

    .line 895
    goto :goto_3
.end method

.method _tr_stored_block(IIZ)V
    .locals 3
    .parameter "buf"
    .parameter "stored_len"
    .parameter "eof"

    .prologue
    const/4 v1, 0x1

    .line 841
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 842
    invoke-virtual {p0, p1, p2, v1}, Lcom/jcraft/jzlib/Deflate;->copy_block(IIZ)V

    .line 843
    return-void

    .line 841
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _tr_tally(II)Z
    .locals 12
    .parameter "dist"
    .parameter "lc"

    .prologue
    const/4 v3, 0x1

    .line 627
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 628
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 630
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    add-int/2addr v5, v6

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 632
    if-nez p1, :cond_0

    .line 634
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, p2, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 644
    :goto_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    and-int/lit16 v4, v4, 0x1fff

    if-nez v4, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 646
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v2, v4, 0x8

    .line 647
    .local v2, out_length:I
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int v1, v4, v5

    .line 649
    .local v1, in_length:I
    const/4 v0, 0x0

    .local v0, dcode:I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 650
    int-to-long v4, v2

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v7, v0, 0x2

    aget-short v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    sget-object v10, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    aget v10, v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    .end local v0           #dcode:I
    .end local v1           #in_length:I
    .end local v2           #out_length:I
    :cond_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 639
    add-int/lit8 p1, p1, -0x1

    .line 640
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    sget-object v5, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte v5, v5, p2

    add-int/lit16 v5, v5, 0x100

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 641
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {p1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 653
    .restart local v0       #dcode:I
    .restart local v1       #in_length:I
    .restart local v2       #out_length:I
    :cond_1
    ushr-int/lit8 v2, v2, 0x3

    .line 654
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_3

    div-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_3

    .line 657
    .end local v0           #dcode:I
    .end local v1           #in_length:I
    .end local v2           #out_length:I
    :cond_2
    :goto_2
    return v3

    :cond_3
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_2
.end method

.method bi_flush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 727
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 728
    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 729
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 732
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 733
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 734
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method bi_windup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 741
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 745
    :cond_0
    :goto_0
    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 746
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 747
    return-void

    .line 742
    :cond_1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_0

    .line 743
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    goto :goto_0
.end method

.method build_bl_tree()I
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget v2, v2, Lcom/jcraft/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 466
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget v2, v2, Lcom/jcraft/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 469
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v1, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 476
    const/16 v0, 0x12

    .local v0, max_blindex:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 482
    return v0

    .line 476
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method compress_block([S[S)V
    .locals 9
    .parameter "ltree"
    .parameter "dtree"

    .prologue
    .line 667
    const/4 v4, 0x0

    .line 671
    .local v4, lx:I
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    if-eqz v5, :cond_2

    .line 673
    :cond_0
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 675
    .local v1, dist:I
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .local v3, lc:I
    add-int/lit8 v4, v4, 0x1

    .line 677
    if-nez v1, :cond_3

    .line 678
    invoke-virtual {p0, v3, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 703
    :cond_1
    :goto_0
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    if-lt v4, v5, :cond_0

    .line 706
    .end local v1           #dist:I
    .end local v3           #lc:I
    :cond_2
    const/16 v5, 0x100

    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 707
    const/16 v5, 0x201

    aget-short v5, p1, v5

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 708
    return-void

    .line 682
    .restart local v1       #dist:I
    .restart local v3       #lc:I
    :cond_3
    sget-object v5, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte v0, v5, v3

    .line 684
    .local v0, code:I
    add-int/lit16 v5, v0, 0x100

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 685
    sget-object v5, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    aget v2, v5, v0

    .line 686
    .local v2, extra:I
    if-eqz v2, :cond_4

    .line 687
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_length:[I

    aget v5, v5, v0

    sub-int/2addr v3, v5

    .line 688
    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 690
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 691
    invoke-static {v1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    move-result v0

    .line 693
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 694
    sget-object v5, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    aget v2, v5, v0

    .line 695
    if-eqz v2, :cond_1

    .line 696
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    aget v5, v5, v0

    sub-int/2addr v1, v5

    .line 697
    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_0
.end method

.method copy_block(IIZ)V
    .locals 2
    .parameter "buf"
    .parameter "len"
    .parameter "header"

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, index:I
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    .line 757
    const/16 v1, 0x8

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 759
    if-eqz p3, :cond_0

    .line 760
    int-to-short v1, p2

    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 761
    xor-int/lit8 v1, p2, -0x1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    invoke-virtual {p0, v1, p1, p2}, Lcom/jcraft/jzlib/Deflate;->put_byte([BII)V

    .line 769
    return-void
.end method

.method deflate(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 11
    .parameter "strm"
    .parameter "flush"

    .prologue
    .line 1484
    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 1485
    :cond_0
    const/4 v0, -0x2

    .line 1621
    :goto_0
    return v0

    .line 1488
    :cond_1
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v0, :cond_2

    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    .line 1491
    :cond_3
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1492
    const/4 v0, -0x2

    goto :goto_0

    .line 1494
    :cond_4
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_5

    .line 1495
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1496
    const/4 v0, -0x5

    goto :goto_0

    .line 1499
    :cond_5
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 1500
    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1501
    .local v10, old_flush:I
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1504
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_9

    .line 1505
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    add-int/lit8 v0, v0, -0x8

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v7, v0, 0x8

    .line 1506
    .local v7, header:I
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v9, v0, 0x1

    .line 1508
    .local v9, level_flags:I
    const/4 v0, 0x3

    if-le v9, v0, :cond_6

    const/4 v9, 0x3

    .line 1509
    :cond_6
    shl-int/lit8 v0, v9, 0x6

    or-int/2addr v7, v0

    .line 1510
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v0, :cond_7

    or-int/lit8 v7, v7, 0x20

    .line 1511
    :cond_7
    rem-int/lit8 v0, v7, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    add-int/2addr v7, v0

    .line 1513
    const/16 v0, 0x71

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 1514
    invoke-virtual {p0, v7}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1518
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v0, :cond_8

    .line 1519
    iget-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1520
    iget-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1522
    :cond_8
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1526
    .end local v7           #header:I
    .end local v9           #level_flags:I
    :cond_9
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_a

    .line 1527
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1528
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_b

    .line 1535
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1536
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1543
    :cond_a
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_b

    if-gt p2, v10, :cond_b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_b

    .line 1545
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1546
    const/4 v0, -0x5

    goto/16 :goto_0

    .line 1550
    :cond_b
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-ne v0, v1, :cond_c

    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v0, :cond_c

    .line 1551
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1552
    const/4 v0, -0x5

    goto/16 :goto_0

    .line 1556
    :cond_c
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_d

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_d

    if-eqz p2, :cond_15

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_15

    .line 1558
    :cond_d
    const/4 v6, -0x1

    .line 1559
    .local v6, bstate:I
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    packed-switch v0, :pswitch_data_0

    .line 1572
    :goto_1
    const/4 v0, 0x2

    if-eq v6, v0, :cond_e

    const/4 v0, 0x3

    if-ne v6, v0, :cond_f

    .line 1573
    :cond_e
    const/16 v0, 0x29a

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 1575
    :cond_f
    if-eqz v6, :cond_10

    const/4 v0, 0x2

    if-ne v6, v0, :cond_12

    .line 1576
    :cond_10
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_11

    .line 1577
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1579
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1561
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/jcraft/jzlib/Deflate;->deflate_stored(I)I

    move-result v6

    .line 1562
    goto :goto_1

    .line 1564
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/jcraft/jzlib/Deflate;->deflate_fast(I)I

    move-result v6

    .line 1565
    goto :goto_1

    .line 1567
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/jcraft/jzlib/Deflate;->deflate_slow(I)I

    move-result v6

    .line 1568
    goto :goto_1

    .line 1588
    :cond_12
    const/4 v0, 0x1

    if-ne v6, v0, :cond_15

    .line 1589
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 1590
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->_tr_align()V

    .line 1602
    :cond_13
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1603
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_15

    .line 1604
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1605
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1593
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1596
    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    .line 1598
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    if-ge v8, v0, :cond_13

    .line 1599
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    const/4 v1, 0x0

    aput-short v1, v0, v8

    .line 1598
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1610
    .end local v6           #bstate:I
    .end local v8           #i:I
    :cond_15
    const/4 v0, 0x4

    if-eq p2, v0, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1611
    :cond_16
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1614
    :cond_17
    iget-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1615
    iget-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1616
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1620
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1621
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method deflateEnd()I
    .locals 4

    .prologue
    const/16 v3, 0x71

    const/4 v2, 0x0

    .line 1407
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_0

    .line 1408
    const/4 v0, -0x2

    .line 1417
    :goto_0
    return v0

    .line 1411
    :cond_0
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 1412
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 1413
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 1414
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 1417
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    if-ne v0, v3, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method deflateInit(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 1
    .parameter "strm"
    .parameter "level"

    .prologue
    .line 1320
    const/16 v0, 0xf

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jzlib/Deflate;->deflateInit(Lcom/jcraft/jzlib/ZStream;II)I

    move-result v0

    return v0
.end method

.method deflateInit(Lcom/jcraft/jzlib/ZStream;II)I
    .locals 7
    .parameter "strm"
    .parameter "level"
    .parameter "bits"

    .prologue
    const/16 v3, 0x8

    .line 1316
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jzlib/Deflate;->deflateInit2(Lcom/jcraft/jzlib/ZStream;IIIII)I

    move-result v0

    return v0
.end method

.method deflateInit2(Lcom/jcraft/jzlib/ZStream;IIIII)I
    .locals 4
    .parameter "strm"
    .parameter "level"
    .parameter "method"
    .parameter "windowBits"
    .parameter "memLevel"
    .parameter "strategy"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 1324
    const/4 v0, 0x0

    .line 1333
    .local v0, noheader:I
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1335
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x6

    .line 1337
    :cond_0
    if-gez p4, :cond_1

    .line 1338
    const/4 v0, 0x1

    .line 1339
    neg-int p4, p4

    .line 1342
    :cond_1
    if-lt p5, v2, :cond_2

    if-gt p5, v3, :cond_2

    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-lt p4, v3, :cond_2

    const/16 v1, 0xf

    if-gt p4, v1, :cond_2

    if-ltz p2, :cond_2

    if-gt p2, v3, :cond_2

    if-ltz p6, :cond_2

    const/4 v1, 0x2

    if-le p6, v1, :cond_3

    .line 1346
    :cond_2
    const/4 v1, -0x2

    .line 1382
    :goto_0
    return v1

    .line 1349
    :cond_3
    iput-object p0, p1, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 1351
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1352
    iput p4, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    .line 1353
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    shl-int v1, v2, v1

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 1354
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 1356
    add-int/lit8 v1, p5, 0x7

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    .line 1357
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    shl-int v1, v2, v1

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 1358
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 1359
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 1361
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 1362
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 1363
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 1365
    add-int/lit8 v1, p5, 0x6

    shl-int v1, v2, v1

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    .line 1369
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 1370
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 1372
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 1373
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    .line 1375
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 1379
    iput p6, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    .line 1380
    int-to-byte v1, p3

    iput-byte v1, p0, Lcom/jcraft/jzlib/Deflate;->method:B

    .line 1382
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Deflate;->deflateReset(Lcom/jcraft/jzlib/ZStream;)I

    move-result v1

    goto :goto_0
.end method

.method deflateParams(Lcom/jcraft/jzlib/ZStream;II)I
    .locals 5
    .parameter "strm"
    .parameter "_level"
    .parameter "_strategy"

    .prologue
    .line 1421
    const/4 v0, 0x0

    .line 1423
    .local v0, err:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1424
    const/4 p2, 0x6

    .line 1426
    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x9

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    const/4 v1, 0x2

    if-le p3, v1, :cond_2

    .line 1428
    :cond_1
    const/4 v1, -0x2

    .line 1445
    :goto_0
    return v1

    .line 1431
    :cond_2
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    sget-object v2, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    if-eq v1, v2, :cond_3

    iget-wide v1, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 1434
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 1437
    :cond_3
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    if-eq v1, p2, :cond_4

    .line 1438
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 1439
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 1440
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 1441
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 1442
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 1444
    :cond_4
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    move v1, v0

    .line 1445
    goto :goto_0
.end method

.method deflateReset(Lcom/jcraft/jzlib/ZStream;)I
    .locals 6
    .parameter "strm"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1386
    iput-wide v1, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v1, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 1387
    iput-object v3, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1388
    const/4 v0, 0x2

    iput v0, p1, Lcom/jcraft/jzlib/ZStream;->data_type:I

    .line 1390
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 1391
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 1393
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-gez v0, :cond_0

    .line 1394
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1396
    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v0, :cond_1

    const/16 v0, 0x71

    :goto_0
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 1397
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1399
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1401
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->tr_init()V

    .line 1402
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->lm_init()V

    .line 1403
    return v4

    .line 1396
    :cond_1
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method deflateSetDictionary(Lcom/jcraft/jzlib/ZStream;[BI)I
    .locals 9
    .parameter "strm"
    .parameter "dictionary"
    .parameter "dictLength"

    .prologue
    const/4 v4, 0x0

    .line 1449
    move v7, p3

    .line 1450
    .local v7, length:I
    const/4 v6, 0x0

    .line 1452
    .local v6, index:I
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    .line 1453
    :cond_0
    const/4 v4, -0x2

    .line 1478
    :cond_1
    return v4

    .line 1455
    :cond_2
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    iget-wide v1, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1457
    const/4 v0, 0x3

    if-lt v7, v0, :cond_1

    .line 1458
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v0, v0, -0x106

    if-le v7, v0, :cond_3

    .line 1459
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v7, v0, -0x106

    .line 1460
    sub-int v6, p3, v7

    .line 1462
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    invoke-static {p2, v6, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1463
    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1464
    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 1470
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1471
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1473
    const/4 v8, 0x0

    .local v8, n:I
    :goto_0
    add-int/lit8 v0, v7, -0x3

    if-gt v8, v0, :cond_1

    .line 1474
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v2, v8, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1475
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v1, v8

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v3

    aput-short v2, v0, v1

    .line 1476
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    int-to-short v2, v8

    aput-short v2, v0, v1

    .line 1473
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method deflate_fast(I)I
    .locals 12
    .parameter "flush"

    .prologue
    const/4 v3, 0x1

    const v11, 0xffff

    const/4 v10, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1004
    const/4 v1, 0x0

    .line 1012
    .local v1, hash_head:I
    :cond_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v2, v6, :cond_3

    .line 1013
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 1014
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v2, v6, :cond_2

    if-nez p1, :cond_2

    .line 1101
    :cond_1
    :goto_0
    return v4

    .line 1017
    :cond_2
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_3

    .line 1096
    if-ne p1, v10, :cond_9

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1097
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_a

    .line 1098
    if-ne p1, v10, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    .line 1022
    :cond_3
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-lt v2, v5, :cond_4

    .line 1023
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1026
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v6

    and-int v1, v2, v11

    .line 1027
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v2, v6

    .line 1028
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 1034
    :cond_4
    int-to-long v6, v1

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v11

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v6, v6, -0x106

    if-gt v2, v6, :cond_5

    .line 1040
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    .line 1041
    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1045
    :cond_5
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    if-lt v2, v5, :cond_8

    .line 1048
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p0, v2, v6}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1050
    .local v0, bflush:Z
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1054
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-gt v2, v6, :cond_7

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-lt v2, v5, :cond_7

    .line 1056
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1058
    :cond_6
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1060
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1062
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v6

    and-int v1, v2, v11

    .line 1063
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v2, v6

    .line 1064
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 1069
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    if-nez v2, :cond_6

    .line 1070
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1089
    :goto_2
    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0, v4}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1092
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1073
    :cond_7
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1074
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1075
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1077
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    goto :goto_2

    .line 1085
    .end local v0           #bflush:Z
    :cond_8
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v4, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1086
    .restart local v0       #bflush:Z
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1087
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    goto :goto_2

    .end local v0           #bflush:Z
    :cond_9
    move v2, v4

    .line 1096
    goto/16 :goto_1

    .line 1101
    :cond_a
    if-ne p1, v10, :cond_b

    move v3, v5

    :cond_b
    move v4, v3

    goto/16 :goto_0
.end method

.method deflate_slow(I)I
    .locals 12
    .parameter "flush"

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 1109
    const/4 v1, 0x0

    .line 1119
    .local v1, hash_head:I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v8, 0x106

    if-ge v3, v8, :cond_4

    .line 1120
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 1121
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v8, 0x106

    if-ge v3, v8, :cond_2

    if-nez p1, :cond_2

    .line 1233
    :cond_1
    :goto_1
    return v5

    .line 1124
    :cond_2
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v3, :cond_4

    .line 1222
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v3, :cond_3

    .line 1223
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v5, v3}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1224
    .local v0, bflush:Z
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 1226
    .end local v0           #bflush:Z
    :cond_3
    if-ne p1, v11, :cond_e

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1228
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_f

    .line 1229
    if-ne p1, v11, :cond_1

    move v5, v7

    goto :goto_1

    .line 1130
    :cond_4
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-lt v3, v6, :cond_5

    .line 1131
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v3, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v8

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1133
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v3, v3, v8

    const v8, 0xffff

    and-int v1, v3, v8

    .line 1134
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v3, v8

    .line 1135
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1139
    :cond_5
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    .line 1140
    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1142
    if-eqz v1, :cond_8

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-ge v3, v8, :cond_8

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v1

    const v8, 0xffff

    and-int/2addr v3, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v8, v8, -0x106

    if-gt v3, v8, :cond_8

    .line 1149
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    if-eq v3, v7, :cond_6

    .line 1150
    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1154
    :cond_6
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    const/4 v8, 0x5

    if-gt v3, v8, :cond_8

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    if-ne v3, v6, :cond_8

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v3, v8

    const/16 v8, 0x1000

    if-le v3, v8, :cond_8

    .line 1160
    :cond_7
    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1166
    :cond_8
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    if-lt v3, v6, :cond_b

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    if-gt v3, v8, :cond_b

    .line 1167
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v3, v8

    add-int/lit8 v2, v3, -0x3

    .line 1172
    .local v2, max_insert:I
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, -0x1

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v3, v8}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1178
    .restart local v0       #bflush:Z
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1179
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 1181
    :cond_9
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-gt v3, v2, :cond_a

    .line 1182
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v3, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v8

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 1184
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v3, v3, v8

    const v8, 0xffff

    and-int v1, v3, v8

    .line 1185
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v3, v8

    .line 1186
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1189
    :cond_a
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    if-nez v3, :cond_9

    .line 1190
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 1191
    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 1192
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p0, v5}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1196
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1198
    .end local v0           #bflush:Z
    .end local v2           #max_insert:I
    :cond_b
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v3, :cond_d

    .line 1204
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v5, v3}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1206
    .restart local v0       #bflush:Z
    if-eqz v0, :cond_c

    .line 1207
    invoke-virtual {p0, v5}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1209
    :cond_c
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1210
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1211
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1216
    .end local v0           #bflush:Z
    :cond_d
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 1217
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1218
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    goto/16 :goto_0

    :cond_e
    move v3, v5

    .line 1226
    goto/16 :goto_2

    .line 1233
    :cond_f
    if-ne p1, v11, :cond_10

    move v4, v6

    :cond_10
    move v5, v4

    goto/16 :goto_1
.end method

.method deflate_stored(I)I
    .locals 7
    .parameter "flush"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 790
    const v0, 0xffff

    .line 793
    .local v0, max_block_size:I
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_0

    .line 794
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v0, v2, -0x5

    .line 800
    :cond_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-gt v2, v3, :cond_3

    .line 801
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 802
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 833
    :cond_1
    :goto_0
    return v4

    .line 803
    :cond_2
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_3

    .line 829
    if-ne p1, v6, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 830
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_7

    .line 831
    if-ne p1, v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    .line 806
    :cond_3
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 807
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 810
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    add-int v1, v2, v0

    .line 811
    .local v1, max_start:I
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-lt v2, v1, :cond_5

    .line 813
    :cond_4
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 814
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 816
    invoke-virtual {p0, v4}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 817
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v2, :cond_1

    .line 823
    :cond_5
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v5, v5, -0x106

    if-lt v2, v5, :cond_0

    .line 824
    invoke-virtual {p0, v4}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 825
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    goto :goto_0

    .end local v1           #max_start:I
    :cond_6
    move v2, v4

    .line 829
    goto :goto_1

    .line 833
    :cond_7
    if-ne p1, v6, :cond_8

    const/4 v3, 0x3

    :cond_8
    move v4, v3

    goto :goto_0
.end method

.method fill_window()V
    .locals 10

    .prologue
    const v9, 0xffff

    const/4 v5, 0x0

    .line 924
    :cond_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int v1, v4, v6

    .line 927
    .local v1, more:I
    if-nez v1, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v4, :cond_3

    .line 928
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 970
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_9

    .line 995
    :cond_2
    :goto_1
    return-void

    .line 930
    :cond_3
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 933
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 938
    :cond_4
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, -0x106

    if-lt v4, v6, :cond_1

    .line 939
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    invoke-static {v4, v6, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 941
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 942
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 950
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 951
    .local v2, n:I
    move v3, v2

    .line 953
    .local v3, p:I
    :cond_5
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v9

    .line 954
    .local v0, m:I
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_7

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_2
    aput-short v4, v6, v3

    .line 956
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 958
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 959
    move v3, v2

    .line 961
    :cond_6
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v9

    .line 962
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_8

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_3
    aput-short v4, v6, v3

    .line 966
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_6

    .line 967
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 954
    goto :goto_2

    :cond_8
    move v4, v5

    .line 962
    goto :goto_3

    .line 983
    .end local v0           #m:I
    .end local v2           #n:I
    .end local v3           #p:I
    :cond_9
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v6, v7, v1}, Lcom/jcraft/jzlib/ZStream;->read_buf([BII)I

    move-result v2

    .line 984
    .restart local v2       #n:I
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 987
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_a

    .line 988
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 989
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v4, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 994
    :cond_a
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_0

    goto/16 :goto_1
.end method

.method flush_block_only(Z)V
    .locals 3
    .parameter "eof"

    .prologue
    .line 772
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    :goto_0
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 775
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 776
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 777
    return-void

    .line 772
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method init_block()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 370
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x11e

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 375
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 376
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 377
    return-void
.end method

.method lm_init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    .line 329
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    aput-short v3, v1, v2

    .line 330
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    aput-short v3, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 336
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 337
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 338
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 340
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 341
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 342
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 343
    const/4 v1, 0x2

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 344
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 345
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 346
    return-void
.end method

.method longest_match(I)I
    .locals 14
    .parameter "cur_match"

    .prologue
    .line 1237
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 1238
    .local v1, chain_length:I
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1241
    .local v6, scan:I
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 1242
    .local v0, best_len:I
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    if-le v11, v12, :cond_4

    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    sub-int v3, v11, v12

    .line 1244
    .local v3, limit:I
    :goto_0
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 1249
    .local v5, nice_match:I
    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 1251
    .local v10, wmask:I
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit16 v9, v11, 0x102

    .line 1252
    .local v9, strend:I
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1253
    .local v8, scan_end1:B
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1259
    .local v7, scan_end:B
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    if-lt v11, v12, :cond_0

    .line 1260
    shr-int/lit8 v1, v1, 0x2

    .line 1265
    :cond_0
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-le v5, v11, :cond_1

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1268
    :cond_1
    move v4, p1

    .line 1272
    .local v4, match:I
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    aget-byte v11, v11, v12

    if-ne v11, v7, :cond_2

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v11, v11, v12

    if-ne v11, v8, :cond_2

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    aget-byte v11, v11, v4

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    aget-byte v12, v12, v6

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v11, v11, v4

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v13, v6, 0x1

    aget-byte v12, v12, v13

    if-eq v11, v12, :cond_5

    .line 1309
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    and-int v12, p1, v10

    aget-short v11, v11, v12

    const v12, 0xffff

    and-int p1, v11, v12

    if-le p1, v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    .line 1311
    :cond_3
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-gt v0, v11, :cond_8

    .line 1312
    .end local v0           #best_len:I
    :goto_2
    return v0

    .line 1242
    .end local v3           #limit:I
    .end local v4           #match:I
    .end local v5           #nice_match:I
    .end local v7           #scan_end:B
    .end local v8           #scan_end1:B
    .end local v9           #strend:I
    .end local v10           #wmask:I
    .restart local v0       #best_len:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1282
    .restart local v3       #limit:I
    .restart local v4       #match:I
    .restart local v5       #nice_match:I
    .restart local v7       #scan_end:B
    .restart local v8       #scan_end1:B
    .restart local v9       #strend:I
    .restart local v10       #wmask:I
    :cond_5
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 1295
    :cond_6
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    if-lt v6, v9, :cond_6

    .line 1297
    :cond_7
    sub-int v11, v9, v6

    rsub-int v2, v11, 0x102

    .line 1298
    .local v2, len:I
    add-int/lit16 v6, v9, -0x102

    .line 1300
    if-le v2, v0, :cond_2

    .line 1301
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 1302
    move v0, v2

    .line 1303
    if-ge v2, v5, :cond_3

    .line 1304
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1305
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    goto/16 :goto_1

    .line 1312
    .end local v2           #len:I
    :cond_8
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    goto/16 :goto_2
.end method

.method pqdownheap([SI)V
    .locals 5
    .parameter "tree"
    .parameter "k"

    .prologue
    .line 386
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v1, v2, p2

    .line 387
    .local v1, v:I
    shl-int/lit8 v0, p2, 0x1

    .line 388
    .local v0, j:I
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-gt v0, v2, :cond_1

    .line 390
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v3, v4}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    invoke-static {p1, v1, v2, v3}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aput v1, v2, p2

    .line 403
    return-void

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    aput v3, v2, p2

    move p2, v0

    .line 400
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final putShortMSB(I)V
    .locals 1
    .parameter "b"

    .prologue
    .line 568
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 569
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 570
    return-void
.end method

.method final put_byte(B)V
    .locals 3
    .parameter "c"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    .line 562
    return-void
.end method

.method final put_byte([BII)V
    .locals 2
    .parameter "p"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 558
    return-void
.end method

.method final put_short(I)V
    .locals 1
    .parameter "w"

    .prologue
    .line 564
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 565
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 566
    return-void
.end method

.method scan_tree([SI)V
    .locals 10
    .parameter "tree"
    .parameter "max_code"

    .prologue
    .line 418
    const/4 v6, -0x1

    .line 420
    .local v6, prevlen:I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 421
    .local v5, nextlen:I
    const/4 v0, 0x0

    .line 422
    .local v0, count:I
    const/4 v2, 0x7

    .line 423
    .local v2, max_count:I
    const/4 v3, 0x4

    .line 425
    .local v3, min_count:I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 426
    :cond_0
    add-int/lit8 v7, p2, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    aput-short v8, p1, v7

    .line 428
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-gt v4, p2, :cond_8

    .line 429
    move v1, v5

    .local v1, curlen:I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 430
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 428
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 433
    :cond_1
    if-ge v0, v3, :cond_2

    .line 434
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 446
    :goto_2
    const/4 v0, 0x0

    move v6, v1

    .line 447
    if-nez v5, :cond_6

    .line 448
    const/16 v2, 0x8a

    const/4 v3, 0x3

    goto :goto_1

    .line 436
    :cond_2
    if-eqz v1, :cond_4

    .line 437
    if-eq v1, v6, :cond_3

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 438
    :cond_3
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x20

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 440
    :cond_4
    const/16 v7, 0xa

    if-gt v0, v7, :cond_5

    .line 441
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x22

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 444
    :cond_5
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x24

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 450
    :cond_6
    if-ne v1, v5, :cond_7

    .line 451
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_1

    .line 454
    :cond_7
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_1

    .line 457
    .end local v1           #curlen:I
    :cond_8
    return-void
.end method

.method send_all_trees(III)V
    .locals 3
    .parameter "lcodes"
    .parameter "dcodes"
    .parameter "blcodes"

    .prologue
    const/4 v2, 0x5

    .line 492
    add-int/lit16 v1, p1, -0x101

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 493
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 494
    add-int/lit8 v1, p3, -0x4

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 495
    const/4 v0, 0x0

    .local v0, rank:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 496
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    .line 499
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    .line 500
    return-void
.end method

.method send_bits(II)V
    .locals 5
    .parameter "value"
    .parameter "length"

    .prologue
    const v4, 0xffff

    .line 578
    move v0, p2

    .line 579
    .local v0, len:I
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v3, v0, 0x10

    if-le v2, v3, :cond_0

    .line 580
    move v1, p1

    .line 582
    .local v1, val:I
    iget-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    shl-int v3, v1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 583
    iget-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 584
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v2, v2, 0x10

    ushr-int v2, v1, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 585
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v3, v0, -0x10

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 591
    .end local v1           #val:I
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    shl-int v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 589
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method final send_code(I[S)V
    .locals 4
    .parameter "c"
    .parameter "tree"

    .prologue
    const v3, 0xffff

    .line 573
    mul-int/lit8 v0, p1, 0x2

    .line 574
    .local v0, c2:I
    aget-short v1, p2, v0

    and-int/2addr v1, v3

    add-int/lit8 v2, v0, 0x1

    aget-short v2, p2, v2

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 575
    return-void
.end method

.method send_tree([SI)V
    .locals 9
    .parameter "tree"
    .parameter "max_code"

    .prologue
    .line 508
    const/4 v6, -0x1

    .line 510
    .local v6, prevlen:I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 511
    .local v5, nextlen:I
    const/4 v0, 0x0

    .line 512
    .local v0, count:I
    const/4 v2, 0x7

    .line 513
    .local v2, max_count:I
    const/4 v3, 0x4

    .line 515
    .local v3, min_count:I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 517
    :cond_0
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-gt v4, p2, :cond_9

    .line 518
    move v1, v5

    .local v1, curlen:I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 519
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 517
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    :cond_1
    if-ge v0, v3, :cond_3

    .line 523
    :cond_2
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {p0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 540
    :goto_2
    const/4 v0, 0x0

    move v6, v1

    .line 541
    if-nez v5, :cond_7

    .line 542
    const/16 v2, 0x8a

    const/4 v3, 0x3

    goto :goto_1

    .line 525
    :cond_3
    if-eqz v1, :cond_5

    .line 526
    if-eq v1, v6, :cond_4

    .line 527
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {p0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    .line 529
    :cond_4
    const/16 v7, 0x10

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 530
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 532
    :cond_5
    const/16 v7, 0xa

    if-gt v0, v7, :cond_6

    .line 533
    const/16 v7, 0x11

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 534
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 537
    :cond_6
    const/16 v7, 0x12

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 538
    add-int/lit8 v7, v0, -0xb

    const/4 v8, 0x7

    invoke-virtual {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 544
    :cond_7
    if-ne v1, v5, :cond_8

    .line 545
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_1

    .line 548
    :cond_8
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_1

    .line 551
    .end local v1           #curlen:I
    :cond_9
    return-void
.end method

.method set_data_type()V
    .locals 5

    .prologue
    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, n:I
    const/4 v0, 0x0

    .line 717
    .local v0, ascii_freq:I
    const/4 v1, 0x0

    .line 718
    .local v1, bin_freq:I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_0
    :goto_1
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    :cond_1
    :goto_2
    const/16 v3, 0x100

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 721
    :cond_2
    ushr-int/lit8 v3, v0, 0x2

    if-le v1, v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    .line 722
    return-void

    .line 721
    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method tr_init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 352
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 354
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 355
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 357
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 358
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 360
    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 361
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 362
    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 365
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 366
    return-void
.end method
