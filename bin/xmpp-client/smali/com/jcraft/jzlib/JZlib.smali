.class public final Lcom/jcraft/jzlib/JZlib;
.super Ljava/lang/Object;
.source "JZlib.java"


# static fields
.field public static final Z_BEST_COMPRESSION:I = 0x9

.field public static final Z_BEST_SPEED:I = 0x1

.field public static final Z_BUF_ERROR:I = -0x5

.field public static final Z_DATA_ERROR:I = -0x3

.field public static final Z_DEFAULT_COMPRESSION:I = -0x1

.field public static final Z_DEFAULT_STRATEGY:I = 0x0

.field public static final Z_ERRNO:I = -0x1

.field public static final Z_FILTERED:I = 0x1

.field public static final Z_FINISH:I = 0x4

.field public static final Z_FULL_FLUSH:I = 0x3

.field public static final Z_HUFFMAN_ONLY:I = 0x2

.field public static final Z_MEM_ERROR:I = -0x4

.field public static final Z_NEED_DICT:I = 0x2

.field public static final Z_NO_COMPRESSION:I = 0x0

.field public static final Z_NO_FLUSH:I = 0x0

.field public static final Z_OK:I = 0x0

.field public static final Z_PARTIAL_FLUSH:I = 0x1

.field public static final Z_STREAM_END:I = 0x1

.field public static final Z_STREAM_ERROR:I = -0x2

.field public static final Z_SYNC_FLUSH:I = 0x2

.field public static final Z_VERSION_ERROR:I = -0x6

.field private static final version:Ljava/lang/String; = "1.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "1.0.2"

    return-object v0
.end method
