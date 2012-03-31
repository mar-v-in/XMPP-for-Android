.class public Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;
.super Ljava/lang/Object;
.source "FilterParserTokenManager.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-array v0, v6, [J

    const/4 v1, 0x2

    const-wide/16 v2, -0x21

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 27
    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 26
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjbitVec0:[J

    .line 28
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnextStates:[I

    .line 30
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ":dn"

    aput-object v1, v0, v5

    .line 31
    const-string v1, "("

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ")"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "{"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 32
    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 33
    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0085"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjrounds:[I

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    .line 40
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curLexState:I

    .line 41
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->defaultLexState:I

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->SwitchTo(I)V

    .line 62
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 370
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjround:I

    .line 371
    const/4 v0, 0x4

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-gtz v1, :cond_0

    .line 374
    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 118
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 120
    :cond_0
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 146
    const/4 v8, 0x0

    .line 147
    .local v8, startsAt:I
    const/4 v9, 0x4

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    .line 148
    const/4 v1, 0x1

    .line 149
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 150
    const v3, 0x7fffffff

    .line 152
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->ReInitRounds()V

    .line 155
    :cond_0
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 156
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 158
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 184
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 234
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 235
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    .line 236
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    .line 237
    const v3, 0x7fffffff

    .line 239
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 240
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_d

    .line 246
    :goto_3
    return p2

    .line 160
    .restart local v4       #l:J
    :pswitch_1
    const-wide v9, -0x70000000401L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 161
    const/16 v9, 0x17

    if-le v3, v9, :cond_4

    .line 162
    const/16 v3, 0x17

    .line 165
    :cond_4
    const-wide/high16 v9, 0x3fe

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 166
    const/16 v9, 0x12

    if-le v3, v9, :cond_2

    .line 167
    const/16 v3, 0x12

    .line 170
    goto :goto_1

    .line 172
    :pswitch_2
    const-wide/high16 v9, 0x3fe

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x12

    if-le v3, v9, :cond_2

    .line 173
    const/16 v3, 0x12

    .line 175
    goto :goto_1

    .line 177
    :pswitch_3
    const-wide v9, -0x70000000401L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x17

    if-le v3, v9, :cond_2

    .line 178
    const/16 v3, 0x17

    .line 180
    goto :goto_1

    .line 185
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_a

    .line 186
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 188
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 218
    :cond_7
    :goto_4
    :pswitch_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 190
    :pswitch_5
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    .line 191
    const/16 v9, 0x17

    if-le v3, v9, :cond_8

    .line 192
    const/16 v3, 0x17

    .line 195
    :cond_8
    const-wide v9, 0x7ffff8007ffff80L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 196
    const/4 v9, 0x3

    if-le v3, v9, :cond_7

    .line 197
    const/4 v3, 0x3

    goto :goto_4

    .line 199
    :cond_9
    const-wide v9, 0x7e0000007eL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 200
    const/4 v9, 0x2

    if-le v3, v9, :cond_7

    .line 201
    const/4 v3, 0x2

    .line 204
    goto :goto_4

    .line 206
    :pswitch_6
    const-wide v9, 0x7ffff8007ffff80L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    if-le v3, v9, :cond_7

    .line 207
    const/4 v3, 0x3

    .line 209
    goto :goto_4

    .line 211
    :pswitch_7
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0x17

    if-le v3, v9, :cond_7

    .line 212
    const/16 v3, 0x17

    .line 214
    goto :goto_4

    .line 220
    .end local v4           #l:J
    :cond_a
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 221
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 223
    .local v6, l2:J
    :cond_b
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 232
    :cond_c
    :goto_5
    if-ne v1, v8, :cond_b

    goto/16 :goto_2

    .line 225
    :pswitch_8
    sget-object v9, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    const/16 v9, 0x17

    if-le v3, v9, :cond_c

    .line 226
    const/16 v3, 0x17

    .line 228
    goto :goto_5

    .line 244
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_d
    :try_start_0
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 223
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 295
    invoke-direct {p0, v1, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 254
    :sswitch_0
    const/16 v0, 0x18

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 256
    :sswitch_1
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 258
    :sswitch_2
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 260
    :sswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 262
    :sswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 264
    :sswitch_5
    const/16 v0, 0x11

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 266
    :sswitch_6
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 268
    :sswitch_7
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 270
    :sswitch_8
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 272
    :sswitch_9
    const/16 v0, 0xc

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    .line 273
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 275
    :sswitch_a
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 277
    :sswitch_b
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 279
    :sswitch_c
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 281
    :sswitch_d
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 283
    :sswitch_e
    const/16 v0, 0x15

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 285
    :sswitch_f
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 287
    :sswitch_10
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 289
    :sswitch_11
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 291
    :sswitch_12
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 293
    :sswitch_13
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x21 -> :sswitch_1
        0x26 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x2a -> :sswitch_5
        0x2d -> :sswitch_6
        0x2e -> :sswitch_7
        0x30 -> :sswitch_8
        0x3a -> :sswitch_9
        0x3b -> :sswitch_a
        0x3c -> :sswitch_b
        0x3d -> :sswitch_c
        0x3e -> :sswitch_d
        0x5c -> :sswitch_e
        0x7b -> :sswitch_f
        0x7c -> :sswitch_10
        0x7d -> :sswitch_11
        0x7e -> :sswitch_12
        0x85 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 3
    .parameter "active0"

    .prologue
    const/4 v2, 0x0

    .line 301
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    iget-char v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 312
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 304
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 316
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 317
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 320
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    iget-char v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    .line 334
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 327
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 328
    invoke-direct {p0, v1, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 342
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    .line 343
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    .line 344
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 348
    .line 350
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    .line 357
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curLexState:I

    .line 358
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 359
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->ReInitRounds()V

    .line 360
    return-void
.end method

.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 365
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->SwitchTo(I)V

    .line 366
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 383
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 384
    :cond_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    const/4 v2, 0x2

    .line 384
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 388
    :cond_1
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curLexState:I

    .line 390
    return-void
.end method

.method public getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 13

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 67
    const/4 v8, 0x0

    .line 71
    .local v8, curPos:I
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    .line 79
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    .line 80
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 81
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    if-eq v0, v2, :cond_1

    .line 82
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v11

    .local v11, matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    move-object v12, v11

    .line 86
    .end local v11           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .local v12, matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_0
    return-object v12

    .line 72
    .end local v12           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :catch_0
    move-exception v9

    .line 73
    .local v9, e:Ljava/io/IOException;
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v11

    .restart local v11       #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    move-object v12, v11

    .line 75
    .end local v11           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v12       #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_0

    .line 88
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 89
    .local v3, error_line:I
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 90
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 91
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, EOFSeen:Z
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_1
    if-nez v1, :cond_2

    .line 106
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V

    .line 107
    if-gt v8, v6, :cond_6

    const-string v5, ""

    .line 109
    :cond_2
    :goto_2
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curLexState:I

    .line 110
    iget-char v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    .line 109
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 95
    :catch_1
    move-exception v10

    .line 96
    .local v10, e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 97
    if-gt v8, v6, :cond_4

    const-string v5, ""

    .line 98
    :goto_3
    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 100
    const/4 v4, 0x0

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 102
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    .end local v10           #e1:Ljava/io/IOException;
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method protected jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 9

    .prologue
    .line 129
    sget-object v7, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 130
    .local v5, im:Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, curTokenImage:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 132
    .local v1, beginLine:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 133
    .local v0, beginColumn:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 134
    .local v4, endLine:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 135
    .local v3, endColumn:I
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v6

    .line 137
    .local v6, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iput v1, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->beginLine:I

    .line 138
    iput v4, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->endLine:I

    .line 139
    iput v0, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->beginColumn:I

    .line 140
    iput v3, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->endColumn:I

    .line 142
    return-object v6

    .end local v0           #beginColumn:I
    .end local v1           #beginLine:I
    .end local v2           #curTokenImage:Ljava/lang/String;
    .end local v3           #endColumn:I
    .end local v4           #endLine:I
    .end local v6           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_0
    move-object v2, v5

    .line 130
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 379
    return-void
.end method
