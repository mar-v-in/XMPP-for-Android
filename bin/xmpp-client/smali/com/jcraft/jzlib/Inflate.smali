.class final Lcom/jcraft/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final FLAG:I = 0x1

.field private static final MAX_WBITS:I = 0xf

.field private static final METHOD:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field static final Z_FINISH:I = 0x4

.field static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static mark:[B


# instance fields
.field blocks:Lcom/jcraft/jzlib/InfBlocks;

.field marker:I

.field method:I

.field mode:I

.field need:J

.field nowrap:I

.field was:[J

.field wbits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/Inflate;->mark:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0xfft
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->was:[J

    return-void
.end method


# virtual methods
.method inflate(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 9
    .parameter "z"
    .parameter "f"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v2, :cond_2

    .line 145
    :cond_0
    const/4 v1, -0x2

    .line 285
    :cond_1
    :goto_0
    return v1

    .line 146
    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    const/4 p2, -0x5

    .line 147
    :goto_1
    const/4 v1, -0x5

    .line 150
    .local v1, r:I
    :goto_2
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 285
    const/4 v1, -0x2

    goto :goto_0

    .line 146
    .end local v1           #r:I
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 153
    .restart local v1       #r:I
    :pswitch_0
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 155
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 156
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    and-int/lit8 v2, v3, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 157
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 158
    const-string v2, "unknown compression method"

    iput-object v2, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 159
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto :goto_2

    .line 162
    :cond_4
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v3, v3, Lcom/jcraft/jzlib/Inflate;->wbits:I

    if-le v2, v3, :cond_5

    .line 163
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 164
    const-string v2, "invalid window size"

    iput-object v2, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 165
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto :goto_2

    .line 168
    :cond_5
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x1

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 171
    :pswitch_1
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 173
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 174
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 176
    .local v0, b:I
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0x1f

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 178
    const-string v2, "incorrect header check"

    iput-object v2, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 179
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 183
    :cond_6
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_7

    .line 184
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 187
    :cond_7
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x2

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 190
    .end local v0           #b:I
    :pswitch_2
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 192
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 193
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 194
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x3

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 197
    :pswitch_3
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 199
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 200
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    const-wide/32 v7, 0xff0000

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 201
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x4

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 204
    :pswitch_4
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 206
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 207
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    const-wide/32 v7, 0xff00

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 208
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 211
    :pswitch_5
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 213
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 214
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 215
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v2, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 216
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x6

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 217
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 219
    :pswitch_6
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 220
    const-string v2, "need dictionary"

    iput-object v2, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 221
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 222
    const/4 v1, -0x2

    goto/16 :goto_0

    .line 225
    :pswitch_7
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v2, p1, v1}, Lcom/jcraft/jzlib/InfBlocks;->proc(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v1

    .line 226
    const/4 v2, -0x3

    if-ne v1, v2, :cond_8

    .line 227
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 228
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 231
    :cond_8
    if-nez v1, :cond_9

    .line 232
    move v1, p2

    .line 234
    :cond_9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 237
    move v1, p2

    .line 238
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, v3, Lcom/jcraft/jzlib/Inflate;->was:[J

    invoke-virtual {v2, p1, v3}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    .line 239
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v2, :cond_a

    .line 240
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 243
    :cond_a
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0x8

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 246
    :pswitch_8
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 248
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 249
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 250
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0x9

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 253
    :pswitch_9
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 255
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 256
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    const-wide/32 v7, 0xff0000

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 257
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xa

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 260
    :pswitch_a
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 262
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 263
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    const-wide/32 v7, 0xff00

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 264
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xb

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 267
    :pswitch_b
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p2

    .line 269
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 270
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 272
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->was:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    long-to-int v2, v2

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v3, v3, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v3, v3

    if-eq v2, v3, :cond_b

    .line 273
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 274
    const-string v2, "incorrect data check"

    iput-object v2, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 275
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 279
    :cond_b
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 281
    :pswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 283
    :pswitch_d
    const/4 v1, -0x3

    goto/16 :goto_0

    .line 150
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method inflateEnd(Lcom/jcraft/jzlib/ZStream;)I
    .locals 1
    .parameter "z"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/InfBlocks;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method inflateInit(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 6
    .parameter "z"
    .parameter "w"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 118
    iput v1, p0, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    .line 119
    if-gez p2, :cond_0

    .line 120
    neg-int p2, p2

    .line 121
    iput v5, p0, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    .line 125
    :cond_0
    const/16 v2, 0x8

    if-lt p2, v2, :cond_1

    const/16 v2, 0xf

    if-le p2, v2, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Inflate;->inflateEnd(Lcom/jcraft/jzlib/ZStream;)I

    .line 127
    const/4 v0, -0x2

    .line 137
    :goto_0
    return v0

    .line 129
    :cond_2
    iput p2, p0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    .line 131
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    new-instance v3, Lcom/jcraft/jzlib/InfBlocks;

    iget-object v4, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v4, v4, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v4, :cond_3

    :goto_1
    shl-int v4, v5, p2

    invoke-direct {v3, p1, v0, v4}, Lcom/jcraft/jzlib/InfBlocks;-><init>(Lcom/jcraft/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v3, v2, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 136
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Inflate;->inflateReset(Lcom/jcraft/jzlib/ZStream;)I

    move v0, v1

    .line 137
    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 131
    goto :goto_1
.end method

.method inflateReset(Lcom/jcraft/jzlib/ZStream;)I
    .locals 5
    .parameter "z"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, -0x2

    .line 102
    :goto_0
    return v1

    .line 98
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 99
    iput-object v4, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 100
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    :goto_1
    iput v0, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 101
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v0, v0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v0, p1, v4}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_1
.end method

.method inflateSetDictionary(Lcom/jcraft/jzlib/ZStream;[BI)I
    .locals 9
    .parameter "z"
    .parameter "dictionary"
    .parameter "dictLength"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 292
    const/4 v6, 0x0

    .line 293
    .local v6, index:I
    move v7, p3

    .line 294
    .local v7, length:I
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->mode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 295
    :cond_0
    const/4 v4, -0x2

    .line 309
    :goto_0
    return v4

    .line 297
    :cond_1
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    const-wide/16 v1, 0x1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 298
    const/4 v4, -0x3

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 303
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    shl-int v0, v8, v0

    if-lt v7, v0, :cond_3

    .line 304
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    shl-int v0, v8, v0

    add-int/lit8 v7, v0, -0x1

    .line 305
    sub-int v6, p3, v7

    .line 307
    :cond_3
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v0, v0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v0, p2, v6, v7}, Lcom/jcraft/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 308
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v1, 0x7

    iput v1, v0, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto :goto_0
.end method

.method inflateSync(Lcom/jcraft/jzlib/ZStream;)I
    .locals 13
    .parameter "z"

    .prologue
    const/16 v9, 0xd

    const/4 v12, 0x4

    const/4 v7, 0x0

    .line 321
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-nez v8, :cond_1

    .line 322
    :cond_0
    const/4 v7, -0x2

    .line 360
    :goto_0
    return v7

    .line 323
    :cond_1
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v8, v8, Lcom/jcraft/jzlib/Inflate;->mode:I

    if-eq v8, v9, :cond_2

    .line 324
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iput v9, v8, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 325
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iput v7, v8, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 327
    :cond_2
    iget v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .local v1, n:I
    if-nez v1, :cond_3

    .line 328
    const/4 v7, -0x5

    goto :goto_0

    .line 329
    :cond_3
    iget v2, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 330
    .local v2, p:I
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v0, v8, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 333
    .local v0, m:I
    :goto_1
    if-eqz v1, :cond_6

    if-ge v0, v12, :cond_6

    .line 334
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    aget-byte v8, v8, v2

    sget-object v9, Lcom/jcraft/jzlib/Inflate;->mark:[B

    aget-byte v9, v9, v0

    if-ne v8, v9, :cond_4

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 343
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 337
    :cond_4
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    aget-byte v8, v8, v2

    if-eqz v8, :cond_5

    .line 338
    const/4 v0, 0x0

    goto :goto_2

    .line 341
    :cond_5
    rsub-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 347
    :cond_6
    iget-wide v8, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v10, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v10, v2, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 348
    iput v2, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 349
    iput v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 350
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iput v0, v8, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 353
    if-eq v0, v12, :cond_7

    .line 354
    const/4 v7, -0x3

    goto :goto_0

    .line 356
    :cond_7
    iget-wide v3, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .local v3, r:J
    iget-wide v5, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 357
    .local v5, w:J
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Inflate;->inflateReset(Lcom/jcraft/jzlib/ZStream;)I

    .line 358
    iput-wide v3, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput-wide v5, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 359
    iget-object v8, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v9, 0x7

    iput v9, v8, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto :goto_0
.end method

.method inflateSyncPoint(Lcom/jcraft/jzlib/ZStream;)I
    .locals 1
    .parameter "z"

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v0, v0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, -0x2

    .line 372
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v0, v0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/InfBlocks;->sync_point()I

    move-result v0

    goto :goto_0
.end method
