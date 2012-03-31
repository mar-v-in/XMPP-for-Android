.class final Lcom/jcraft/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final inflate_mask:[I


# instance fields
.field dbits:B

.field dist:I

.field dtree:[I

.field dtree_index:I

.field get:I

.field lbits:B

.field len:I

.field lit:I

.field ltree:[I

.field ltree_index:I

.field mode:I

.field need:I

.field tree:[I

.field tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x1t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0xfft 0x7t 0x0t 0x0t
        0xfft 0xft 0x0t 0x0t
        0xfft 0x1ft 0x0t 0x0t
        0xfft 0x3ft 0x0t 0x0t
        0xfft 0x7ft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 93
    return-void
.end method


# virtual methods
.method free(Lcom/jcraft/jzlib/ZStream;)V
    .locals 0
    .parameter "z"

    .prologue
    .line 394
    return-void
.end method

.method inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I
    .locals 28
    .parameter "bl"
    .parameter "bd"
    .parameter "tl"
    .parameter "tl_index"
    .parameter "td"
    .parameter "td_index"
    .parameter "s"
    .parameter "z"

    .prologue
    .line 424
    move-object/from16 v0, p8

    iget v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .local v14, p:I
    move-object/from16 v0, p8

    iget v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .local v13, n:I
    move-object/from16 v0, p7

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    .local v5, b:I
    move-object/from16 v0, p7

    iget v9, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 425
    .local v9, k:I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    .local v16, q:I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    add-int/lit8 v10, v24, -0x1

    .line 428
    .local v10, m:I
    :goto_0
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v24, p1

    .line 429
    .local v12, ml:I
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v11, v24, p2

    .local v11, md:I
    move/from16 v17, v16

    .end local v16           #q:I
    .local v17, q:I
    move v15, v14

    .line 434
    .end local v14           #p:I
    .local v15, p:I
    :goto_1
    const/16 v24, 0x14

    move/from16 v0, v24

    if-ge v9, v0, :cond_1

    .line 435
    add-int/lit8 v13, v13, -0x1

    .line 436
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15           #p:I
    .restart local v14       #p:I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14           #p:I
    .restart local v15       #p:I
    goto :goto_1

    .line 425
    .end local v10           #m:I
    .end local v11           #md:I
    .end local v12           #ml:I
    .end local v15           #p:I
    .end local v17           #q:I
    .restart local v14       #p:I
    .restart local v16       #q:I
    :cond_0
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    sub-int v10, v24, v16

    goto :goto_0

    .line 439
    .end local v14           #p:I
    .end local v16           #q:I
    .restart local v10       #m:I
    .restart local v11       #md:I
    .restart local v12       #ml:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_1
    and-int v20, v5, v12

    .line 440
    .local v20, t:I
    move-object/from16 v21, p3

    .line 441
    .local v21, tp:[I
    move/from16 v22, p4

    .line 442
    .local v22, tp_index:I
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 443
    .local v23, tp_index_t_3:I
    aget v8, v21, v23

    .local v8, e:I
    if-nez v8, :cond_4

    .line 444
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 446
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #q:I
    .restart local v16       #q:I
    add-int/lit8 v25, v23, 0x2

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v24, v17

    .line 447
    add-int/lit8 v10, v10, -0x1

    move v14, v15

    .line 594
    .end local v15           #p:I
    .restart local v14       #p:I
    :goto_2
    const/16 v24, 0x102

    move/from16 v0, v24

    if-lt v10, v0, :cond_2

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v13, v0, :cond_14

    .line 597
    :cond_2
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .local v6, c:I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    if-ge v0, v6, :cond_3

    shr-int/lit8 v6, v9, 0x3

    :cond_3
    add-int/2addr v13, v6

    sub-int/2addr v14, v6

    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 599
    move-object/from16 v0, p7

    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 600
    move-object/from16 v0, p8

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p8

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 601
    move/from16 v0, v16

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 603
    const/16 v24, 0x0

    :goto_3
    return v24

    .line 452
    .end local v6           #c:I
    .end local v14           #p:I
    .end local v16           #q:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_4
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 454
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_f

    .line 455
    and-int/lit8 v8, v8, 0xf

    .line 456
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    sget-object v25, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v8

    and-int v25, v25, v5

    add-int v6, v24, v25

    .line 458
    .restart local v6       #c:I
    shr-int/2addr v5, v8

    sub-int/2addr v9, v8

    .line 461
    :goto_4
    const/16 v24, 0xf

    move/from16 v0, v24

    if-ge v9, v0, :cond_5

    .line 462
    add-int/lit8 v13, v13, -0x1

    .line 463
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15           #p:I
    .restart local v14       #p:I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14           #p:I
    .restart local v15       #p:I
    goto :goto_4

    .line 466
    :cond_5
    and-int v20, v5, v11

    .line 467
    move-object/from16 v21, p5

    .line 468
    move/from16 v22, p6

    .line 469
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 470
    aget v8, v21, v23

    .line 474
    :goto_5
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 476
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_c

    .line 478
    and-int/lit8 v8, v8, 0xf

    .line 479
    :goto_6
    if-ge v9, v8, :cond_6

    .line 480
    add-int/lit8 v13, v13, -0x1

    .line 481
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15           #p:I
    .restart local v14       #p:I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14           #p:I
    .restart local v15       #p:I
    goto :goto_6

    .line 484
    :cond_6
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    sget-object v25, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v8

    and-int v25, v25, v5

    add-int v7, v24, v25

    .line 486
    .local v7, d:I
    shr-int/2addr v5, v8

    sub-int/2addr v9, v8

    .line 489
    sub-int/2addr v10, v6

    .line 490
    move/from16 v0, v17

    if-lt v0, v7, :cond_8

    .line 492
    sub-int v18, v17, v7

    .line 493
    .local v18, r:I
    sub-int v24, v17, v18

    if-lez v24, :cond_7

    const/16 v24, 0x2

    sub-int v25, v17, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 494
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #q:I
    .restart local v16       #q:I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18           #r:I
    .local v19, r:I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v17

    .line 495
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #q:I
    .restart local v17       #q:I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19           #r:I
    .restart local v18       #r:I
    aget-byte v25, v25, v19

    aput-byte v25, v24, v16

    .line 496
    add-int/lit8 v6, v6, -0x2

    move/from16 v16, v17

    .line 525
    .end local v17           #q:I
    .restart local v16       #q:I
    :goto_7
    sub-int v24, v16, v18

    if-lez v24, :cond_b

    sub-int v24, v16, v18

    move/from16 v0, v24

    if-le v6, v0, :cond_b

    .line 526
    :goto_8
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #q:I
    .restart local v17       #q:I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18           #r:I
    .restart local v19       #r:I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v16

    .line 527
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_15

    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    move v14, v15

    .end local v15           #p:I
    .restart local v14       #p:I
    goto/16 :goto_2

    .line 499
    .end local v14           #p:I
    .end local v16           #q:I
    .end local v19           #r:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    .restart local v18       #r:I
    :cond_7
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v17

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    add-int/lit8 v16, v17, 0x2

    .end local v17           #q:I
    .restart local v16       #q:I
    add-int/lit8 v18, v18, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_7

    .line 504
    .end local v16           #q:I
    .end local v18           #r:I
    .restart local v17       #q:I
    :cond_8
    sub-int v18, v17, v7

    .line 506
    .restart local v18       #r:I
    :cond_9
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    add-int v18, v18, v24

    .line 507
    if-ltz v18, :cond_9

    .line 508
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    sub-int v8, v24, v18

    .line 509
    if-le v6, v8, :cond_17

    .line 510
    sub-int/2addr v6, v8

    .line 511
    sub-int v24, v17, v18

    if-lez v24, :cond_a

    sub-int v24, v17, v18

    move/from16 v0, v24

    if-le v8, v0, :cond_a

    move/from16 v16, v17

    .line 512
    .end local v17           #q:I
    .restart local v16       #q:I
    :goto_9
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #q:I
    .restart local v17       #q:I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18           #r:I
    .restart local v19       #r:I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v16

    .line 513
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_16

    move/from16 v18, v19

    .end local v19           #r:I
    .restart local v18       #r:I
    move/from16 v16, v17

    .line 519
    .end local v17           #q:I
    .restart local v16       #q:I
    :goto_a
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 516
    .end local v16           #q:I
    .restart local v17       #q:I
    :cond_a
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    add-int v16, v17, v8

    .end local v17           #q:I
    .restart local v16       #q:I
    add-int v18, v18, v8

    const/4 v8, 0x0

    goto :goto_a

    .line 530
    :cond_b
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    add-int v16, v16, v6

    add-int v18, v18, v6

    const/4 v6, 0x0

    move v14, v15

    .line 533
    .end local v15           #p:I
    .restart local v14       #p:I
    goto/16 :goto_2

    .line 535
    .end local v7           #d:I
    .end local v14           #p:I
    .end local v16           #q:I
    .end local v18           #r:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_c
    and-int/lit8 v24, v8, 0x40

    if-nez v24, :cond_d

    .line 536
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    add-int v20, v20, v24

    .line 537
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v24, v24, v8

    and-int v24, v24, v5

    add-int v20, v20, v24

    .line 538
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 539
    aget v8, v21, v23

    goto/16 :goto_5

    .line 542
    :cond_d
    const-string v24, "invalid distance code"

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 544
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    if-ge v0, v6, :cond_e

    shr-int/lit8 v6, v9, 0x3

    :cond_e
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15           #p:I
    .restart local v14       #p:I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 546
    move-object/from16 v0, p7

    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 547
    move-object/from16 v0, p8

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p8

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 548
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 550
    const/16 v24, -0x3

    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_3

    .line 557
    .end local v6           #c:I
    .end local v14           #p:I
    .end local v16           #q:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_f
    and-int/lit8 v24, v8, 0x40

    if-nez v24, :cond_10

    .line 558
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    add-int v20, v20, v24

    .line 559
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v24, v24, v8

    and-int v24, v24, v5

    add-int v20, v20, v24

    .line 560
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 561
    aget v8, v21, v23

    if-nez v8, :cond_4

    .line 563
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 565
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #q:I
    .restart local v16       #q:I
    add-int/lit8 v25, v23, 0x2

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v24, v17

    .line 566
    add-int/lit8 v10, v10, -0x1

    move v14, v15

    .line 567
    .end local v15           #p:I
    .restart local v14       #p:I
    goto/16 :goto_2

    .line 570
    .end local v14           #p:I
    .end local v16           #q:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_10
    and-int/lit8 v24, v8, 0x20

    if-eqz v24, :cond_12

    .line 572
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .restart local v6       #c:I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    if-ge v0, v6, :cond_11

    shr-int/lit8 v6, v9, 0x3

    :cond_11
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15           #p:I
    .restart local v14       #p:I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 574
    move-object/from16 v0, p7

    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 575
    move-object/from16 v0, p8

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p8

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 576
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 578
    const/16 v24, 0x1

    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_3

    .line 581
    .end local v6           #c:I
    .end local v14           #p:I
    .end local v16           #q:I
    .restart local v15       #p:I
    .restart local v17       #q:I
    :cond_12
    const-string v24, "invalid literal/length code"

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .restart local v6       #c:I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    if-ge v0, v6, :cond_13

    shr-int/lit8 v6, v9, 0x3

    :cond_13
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15           #p:I
    .restart local v14       #p:I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 585
    move-object/from16 v0, p7

    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 586
    move-object/from16 v0, p8

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p8

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 587
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 589
    const/16 v24, -0x3

    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_3

    .end local v6           #c:I
    :cond_14
    move/from16 v17, v16

    .end local v16           #q:I
    .restart local v17       #q:I
    move v15, v14

    .end local v14           #p:I
    .restart local v15       #p:I
    goto/16 :goto_1

    .restart local v6       #c:I
    .restart local v7       #d:I
    .restart local v19       #r:I
    :cond_15
    move/from16 v18, v19

    .end local v19           #r:I
    .restart local v18       #r:I
    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_8

    .end local v16           #q:I
    .end local v18           #r:I
    .restart local v17       #q:I
    .restart local v19       #r:I
    :cond_16
    move/from16 v18, v19

    .end local v19           #r:I
    .restart local v18       #r:I
    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_9

    .end local v16           #q:I
    .restart local v17       #q:I
    :cond_17
    move/from16 v16, v17

    .end local v17           #q:I
    .restart local v16       #q:I
    goto/16 :goto_7
.end method

.method init(II[II[IILcom/jcraft/jzlib/ZStream;)V
    .locals 1
    .parameter "bl"
    .parameter "bd"
    .parameter "tl"
    .parameter "tl_index"
    .parameter "td"
    .parameter "td_index"
    .parameter "z"

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 98
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    .line 99
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    .line 100
    iput-object p3, p0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    .line 101
    iput p4, p0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    .line 102
    iput-object p5, p0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    .line 103
    iput p6, p0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 105
    return-void
.end method

.method proc(Lcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;I)I
    .locals 24
    .parameter "s"
    .parameter "z"
    .parameter "r"

    .prologue
    .line 112
    const/4 v11, 0x0

    .line 113
    .local v11, b:I
    const/16 v16, 0x0

    .line 114
    .local v16, k:I
    const/16 v19, 0x0

    .line 121
    .local v19, p:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v18, v0

    .local v18, n:I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v16, v0

    .line 122
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .local v21, q:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 126
    .local v17, m:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 382
    const/16 p3, -0x2

    .line 384
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 385
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 386
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 387
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    :goto_1
    return v2

    .line 122
    .end local v17           #m:I
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_0

    .line 129
    .restart local v17       #m:I
    :pswitch_0
    const/16 v2, 0x102

    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    .line 131
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 132
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 133
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 134
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/jcraft/jzlib/InfCodes;->inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I

    move-result p3

    .line 139
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v16, v0

    .line 140
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 142
    :goto_2
    if-eqz p3, :cond_3

    .line 143
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    const/4 v2, 0x7

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 140
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_2

    .line 143
    :cond_2
    const/16 v2, 0x9

    goto :goto_3

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 151
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 153
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .local v15, j:I
    move/from16 v20, v19

    .line 155
    .end local v19           #p:I
    .local v20, p:I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v15, :cond_5

    .line 156
    if-eqz v18, :cond_4

    const/16 p3, 0x0

    .line 164
    add-int/lit8 v18, v18, -0x1

    .line 165
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p:I
    .restart local v19       #p:I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 166
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19           #p:I
    .restart local v20       #p:I
    goto :goto_4

    .line 159
    :cond_4
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 160
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 161
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 162
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 169
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v3, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    mul-int/lit8 v23, v2, 0x3

    .line 171
    .local v23, tindex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    ushr-int/2addr v11, v2

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    sub-int v16, v16, v2

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    aget v12, v2, v23

    .line 176
    .local v12, e:I
    if-nez v12, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->lit:I

    .line 178
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 179
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 181
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_6
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_7

    .line 182
    and-int/lit8 v2, v12, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 184
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 185
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 187
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_7
    and-int/lit8 v2, v12, 0x40

    if-nez v2, :cond_8

    .line 188
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 189
    div-int/lit8 v2, v23, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v23, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v20

    .line 190
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 192
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_8
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_9

    .line 193
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 194
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 196
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_9
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 197
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 198
    const/16 p3, -0x3

    .line 200
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 201
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 202
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 203
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 206
    .end local v12           #e:I
    .end local v15           #j:I
    .end local v23           #tindex:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .restart local v15       #j:I
    move/from16 v20, v19

    .line 208
    .end local v19           #p:I
    .restart local v20       #p:I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_b

    .line 209
    if-eqz v18, :cond_a

    const/16 p3, 0x0

    .line 217
    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p:I
    .restart local v19       #p:I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 218
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19           #p:I
    .restart local v20       #p:I
    goto :goto_5

    .line 212
    :cond_a
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 213
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 221
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    sget-object v3, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 223
    shr-int/2addr v11, v15

    .line 224
    sub-int v16, v16, v15

    .line 226
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 229
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 231
    .end local v15           #j:I
    .end local v20           #p:I
    .restart local v19       #p:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .restart local v15       #j:I
    move/from16 v20, v19

    .line 233
    .end local v19           #p:I
    .restart local v20       #p:I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v15, :cond_d

    .line 234
    if-eqz v18, :cond_c

    const/16 p3, 0x0

    .line 242
    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p:I
    .restart local v19       #p:I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 243
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19           #p:I
    .restart local v20       #p:I
    goto :goto_6

    .line 237
    :cond_c
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 238
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 239
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 240
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 246
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v3, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    mul-int/lit8 v23, v2, 0x3

    .line 248
    .restart local v23       #tindex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    shr-int/2addr v11, v2

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    sub-int v16, v16, v2

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    aget v12, v2, v23

    .line 252
    .restart local v12       #e:I
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_e

    .line 253
    and-int/lit8 v2, v12, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 255
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 256
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 258
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_e
    and-int/lit8 v2, v12, 0x40

    if-nez v2, :cond_f

    .line 259
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 260
    div-int/lit8 v2, v23, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v23, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v20

    .line 261
    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_0

    .line 263
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_f
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 264
    const-string v2, "invalid distance code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 265
    const/16 p3, -0x3

    .line 267
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 268
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 269
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 270
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 273
    .end local v12           #e:I
    .end local v15           #j:I
    .end local v23           #tindex:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .restart local v15       #j:I
    move/from16 v20, v19

    .line 275
    .end local v19           #p:I
    .restart local v20       #p:I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v15, :cond_11

    .line 276
    if-eqz v18, :cond_10

    const/16 p3, 0x0

    .line 284
    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p:I
    .restart local v19       #p:I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 285
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19           #p:I
    .restart local v20       #p:I
    goto :goto_7

    .line 279
    :cond_10
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 280
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 281
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 282
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20           #p:I
    .restart local v19       #p:I
    goto/16 :goto_1

    .line 288
    .end local v19           #p:I
    .restart local v20       #p:I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    sget-object v3, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 290
    shr-int/2addr v11, v15

    .line 291
    sub-int v16, v16, v15

    .line 293
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 295
    .end local v15           #j:I
    .end local v20           #p:I
    .restart local v19       #p:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    sub-int v13, v21, v2

    .line 296
    .local v13, f:I
    :goto_8
    if-gez v13, :cond_13

    .line 297
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    add-int/2addr v13, v2

    goto :goto_8

    .line 318
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v22, v21, 0x1

    .end local v21           #q:I
    .local v22, q:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v14, v13, 0x1

    .end local v13           #f:I
    .local v14, f:I
    aget-byte v3, v3, v13

    aput-byte v3, v2, v21

    add-int/lit8 v17, v17, -0x1

    .line 320
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v14, v2, :cond_23

    .line 321
    const/4 v13, 0x0

    .line 322
    .end local v14           #f:I
    .restart local v13       #f:I
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v21, v22

    .line 299
    .end local v22           #q:I
    .restart local v21       #q:I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    if-eqz v2, :cond_19

    .line 301
    if-nez v17, :cond_12

    .line 302
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_14

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_16

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 303
    :cond_14
    :goto_a
    if-nez v17, :cond_12

    .line 304
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 305
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_17

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 307
    :goto_b
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_15

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_18

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 309
    :cond_15
    :goto_c
    if-nez v17, :cond_12

    .line 310
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 311
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 312
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 313
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 302
    :cond_16
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_a

    .line 305
    :cond_17
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_b

    .line 307
    :cond_18
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_c

    .line 324
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 327
    .end local v13           #f:I
    :pswitch_6
    if-nez v17, :cond_1f

    .line 328
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_1a

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1c

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 329
    :cond_1a
    :goto_d
    if-nez v17, :cond_1f

    .line 330
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 331
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1d

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 333
    :goto_e
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_1b

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1e

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 334
    :cond_1b
    :goto_f
    if-nez v17, :cond_1f

    .line 335
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 336
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 337
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 338
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 328
    :cond_1c
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_d

    .line 331
    :cond_1d
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_e

    .line 333
    :cond_1e
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_f

    .line 342
    :cond_1f
    const/16 p3, 0x0

    .line 344
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v22, v21, 0x1

    .end local v21           #q:I
    .restart local v22       #q:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jcraft/jzlib/InfCodes;->lit:I

    int-to-byte v3, v3

    aput-byte v3, v2, v21

    add-int/lit8 v17, v17, -0x1

    .line 346
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v21, v22

    .line 347
    .end local v22           #q:I
    .restart local v21       #q:I
    goto/16 :goto_0

    .line 349
    :pswitch_7
    const/4 v2, 0x7

    move/from16 v0, v16

    if-le v0, v2, :cond_20

    .line 350
    add-int/lit8 v16, v16, -0x8

    .line 351
    add-int/lit8 v18, v18, 0x1

    .line 352
    add-int/lit8 v19, v19, -0x1

    .line 355
    :cond_20
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 356
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_21

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 358
    :goto_10
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    if-eq v2, v3, :cond_22

    .line 359
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 360
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 361
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 362
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 356
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_10

    .line 364
    :cond_22
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 366
    :pswitch_8
    const/16 p3, 0x1

    .line 367
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 368
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 369
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 370
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 374
    :pswitch_9
    const/16 p3, -0x3

    .line 376
    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 377
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 378
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 379
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .end local v21           #q:I
    .restart local v14       #f:I
    .restart local v22       #q:I
    :cond_23
    move v13, v14

    .end local v14           #f:I
    .restart local v13       #f:I
    goto/16 :goto_9

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
