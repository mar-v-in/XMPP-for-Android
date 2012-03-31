.class public Lorg/apache/harmony/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice; = null

.field public static final DIR_NAME:I = 0x4

.field public static final DNS_NAME:I = 0x2

.field public static final EDIP_NAME:I = 0x5

.field public static final IP_ADDR:I = 0x7

.field public static final OTHER_NAME:I = 0x0

.field public static final REG_ID:I = 0x8

.field public static final RFC822_NAME:I = 0x1

.field public static final UR_ID:I = 0x6

.field public static final X400_ADDR:I = 0x3

.field private static nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private name:Ljava/lang/Object;

.field private name_encoding:[B

.field private final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 108
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v4

    .line 109
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v5

    .line 110
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v6

    .line 111
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v7

    .line 113
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v1, v0, v8

    .line 114
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/16 v1, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v0, v1

    .line 128
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName$1;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 129
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 130
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 131
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 132
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 133
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 134
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    sget-object v5, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 135
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x6

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 136
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 137
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/16 v4, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 128
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    if-nez p2, :cond_0

    .line 566
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.28"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 600
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.181"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.180"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :pswitch_1
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkDNS(Ljava/lang/String;)V

    .line 579
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 602
    :goto_0
    return-void

    .line 584
    :pswitch_2
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkURI(Ljava/lang/String;)V

    .line 585
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 588
    :pswitch_3
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 591
    :pswitch_4
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->oidStrToInts(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 594
    :pswitch_5
    new-instance v0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 597
    :pswitch_6
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->ipStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    if-nez p2, :cond_0

    .line 533
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.28"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-le p1, v0, :cond_2

    .line 536
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.183"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 539
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 540
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 542
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 612
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 613
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 520
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/ORAddress;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 623
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 624
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/OtherName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 634
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 635
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    array-length v0, p1

    .line 503
    .local v0, length:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 505
    const-string v2, "security.182"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_0
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 508
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/GeneralName;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/GeneralName;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public static checkDNS(Ljava/lang/String;)V
    .locals 11
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/16 v7, 0x2d

    const/16 v6, 0x2e

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 201
    .local v0, bytes:[B
    const/4 v2, 0x1

    .line 202
    .local v2, first_letter:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 230
    return-void

    .line 203
    :cond_0
    aget-byte v1, v0, v3

    .line 204
    .local v1, ch:B
    if-eqz v2, :cond_6

    .line 205
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    if-ne v4, v6, :cond_2

    .line 206
    const/4 v2, 0x0

    .line 202
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const/16 v4, 0x7a

    if-gt v1, v4, :cond_3

    if-ge v1, v10, :cond_5

    :cond_3
    if-lt v1, v8, :cond_4

    if-le v1, v9, :cond_5

    .line 210
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.184"

    .line 211
    int-to-char v6, v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 210
    invoke-static {v5, v6, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_5
    const/4 v2, 0x0

    .line 214
    goto :goto_1

    .line 216
    :cond_6
    if-lt v1, v10, :cond_7

    const/16 v4, 0x7a

    if-le v1, v4, :cond_9

    :cond_7
    if-lt v1, v8, :cond_8

    if-le v1, v9, :cond_9

    .line 217
    :cond_8
    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_9

    .line 218
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.185"

    invoke-static {v5, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_9
    if-ne v1, v6, :cond_1

    .line 223
    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v0, v4

    if-ne v4, v7, :cond_a

    .line 224
    new-instance v4, Ljava/io/IOException;

    .line 225
    const-string v5, "security.186"

    .line 224
    invoke-static {v5, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_a
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static checkURI(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, ur:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.187"

    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #ur:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    .line 248
    const-string v3, "security.189"

    .line 247
    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 247
    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 243
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v1       #ur:Ljava/net/URI;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.188"

    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :cond_2
    return-void
.end method

.method private getBytesAsString([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    .line 729
    const-string v1, ""

    .line 730
    .local v1, result:Ljava/lang/String;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 737
    return-object v1

    .line 730
    :cond_0
    aget-byte v0, p1, v3

    .line 731
    .local v0, element:B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 735
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static ipBytesToStr([B)Ljava/lang/String;
    .locals 4
    .parameter "ip"

    .prologue
    .line 270
    const-string v1, ""

    .line 271
    .local v1, result:Ljava/lang/String;
    array-length v2, p0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_4

    .line 272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 286
    :cond_0
    return-object v1

    .line 273
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v2, "/"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_3
    const-string v2, "."

    goto :goto_1

    .line 279
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_5

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xf

    if-ne v0, v2, :cond_6

    const-string v2, "/"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 282
    :cond_6
    const-string v2, ":"

    goto :goto_3
.end method

.method public static ipStrToBytes(Ljava/lang/String;)[B
    .locals 17
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/16 v13, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_2

    const/4 v7, 0x1

    .line 304
    .local v7, isIPv4:Z
    :goto_0
    if-eqz v7, :cond_3

    const/4 v8, 0x4

    .line 305
    .local v8, num_components:I
    :goto_1
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_0

    .line 306
    mul-int/lit8 v8, v8, 0x2

    .line 309
    :cond_0
    new-array v10, v8, [B

    .line 310
    .local v10, result:[B
    const-string v13, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 312
    .local v6, ip_bytes:[B
    const/4 v2, 0x0

    .line 314
    .local v2, component:I
    const/4 v9, 0x0

    .line 315
    .local v9, reading_second_bound:Z
    if-eqz v7, :cond_f

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, i:I
    :goto_2
    array-length v13, v6

    if-lt v5, v13, :cond_4

    .line 372
    :cond_1
    if-eq v2, v8, :cond_20

    .line 373
    new-instance v13, Ljava/io/IOException;

    const-string v14, "security.18D"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 302
    .end local v2           #component:I
    .end local v5           #i:I
    .end local v6           #ip_bytes:[B
    .end local v7           #isIPv4:Z
    .end local v8           #num_components:I
    .end local v9           #reading_second_bound:Z
    .end local v10           #result:[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 304
    .restart local v7       #isIPv4:Z
    :cond_3
    const/16 v8, 0x10

    goto :goto_1

    .line 322
    .restart local v2       #component:I
    .restart local v5       #i:I
    .restart local v6       #ip_bytes:[B
    .restart local v8       #num_components:I
    .restart local v9       #reading_second_bound:Z
    .restart local v10       #result:[B
    :cond_4
    const/4 v3, 0x0

    .line 324
    .local v3, digits:I
    const/4 v12, 0x0

    .line 325
    .local v12, value:I
    :goto_3
    array-length v13, v6

    if-ge v5, v13, :cond_5

    aget-byte v13, v6, v5

    const/16 v14, 0x30

    if-lt v13, v14, :cond_5

    .line 326
    aget-byte v13, v6, v5

    const/16 v14, 0x39

    if-le v13, v14, :cond_6

    .line 335
    :cond_5
    if-nez v3, :cond_8

    .line 337
    new-instance v13, Ljava/io/IOException;

    .line 338
    const-string v14, "security.18C"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 337
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 328
    const/4 v13, 0x3

    if-le v3, v13, :cond_7

    .line 329
    new-instance v13, Ljava/io/IOException;

    .line 330
    const-string v14, "security.18B"

    .line 329
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 332
    :cond_7
    mul-int/lit8 v13, v12, 0xa

    aget-byte v14, v6, v5

    add-int/lit8 v14, v14, -0x30

    add-int v12, v13, v14

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 340
    :cond_8
    int-to-byte v13, v12

    aput-byte v13, v10, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    array-length v13, v6

    if-ge v5, v13, :cond_1

    .line 347
    aget-byte v13, v6, v5

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_9

    aget-byte v13, v6, v5

    const/16 v14, 0x2f

    if-eq v13, v14, :cond_9

    .line 348
    new-instance v13, Ljava/io/IOException;

    .line 349
    const-string v14, "security.18C"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 348
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 352
    :cond_9
    aget-byte v13, v6, v5

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_c

    .line 353
    if-eqz v9, :cond_a

    .line 355
    new-instance v13, Ljava/io/IOException;

    .line 356
    const-string v14, "security.18C"

    .line 355
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 358
    :cond_a
    const/4 v13, 0x4

    if-eq v2, v13, :cond_b

    .line 359
    new-instance v13, Ljava/io/IOException;

    .line 360
    const-string v14, "security.18D"

    .line 359
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 362
    :cond_b
    const/4 v9, 0x1

    .line 365
    :cond_c
    if-eqz v9, :cond_d

    const/4 v13, 0x7

    :goto_4
    if-le v2, v13, :cond_e

    .line 366
    new-instance v13, Ljava/io/IOException;

    .line 367
    const-string v14, "security.18D"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 366
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 365
    :cond_d
    const/4 v13, 0x3

    goto :goto_4

    .line 369
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 381
    .end local v3           #digits:I
    .end local v5           #i:I
    .end local v12           #value:I
    :cond_f
    array-length v13, v6

    const/16 v14, 0x27

    if-eq v13, v14, :cond_10

    array-length v13, v6

    const/16 v14, 0x4f

    if-eq v13, v14, :cond_10

    .line 383
    new-instance v13, Ljava/io/IOException;

    const-string v14, "security.18E"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 385
    :cond_10
    const/4 v12, 0x0

    .line 387
    .restart local v12       #value:I
    const/4 v11, 0x0

    .line 389
    .local v11, second_hex:Z
    const/4 v4, 0x0

    .line 390
    .local v4, expect_delimiter:Z
    array-length v14, v6

    const/4 v13, 0x0

    :goto_5
    if-lt v13, v14, :cond_12

    .line 447
    if-nez v11, :cond_11

    rem-int/lit8 v13, v2, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_20

    .line 448
    :cond_11
    new-instance v13, Ljava/io/IOException;

    const-string v14, "security.18E"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 390
    :cond_12
    aget-byte v1, v6, v13

    .line 391
    .local v1, bytik:B
    const/16 v15, 0x30

    if-lt v1, v15, :cond_13

    const/16 v15, 0x39

    if-gt v1, v15, :cond_13

    .line 392
    add-int/lit8 v12, v1, -0x30

    .line 428
    :goto_6
    if-eqz v4, :cond_1d

    .line 430
    new-instance v13, Ljava/io/IOException;

    .line 431
    const-string v14, "security.18E"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 430
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 393
    :cond_13
    const/16 v15, 0x41

    if-lt v1, v15, :cond_14

    const/16 v15, 0x46

    if-gt v1, v15, :cond_14

    .line 394
    add-int/lit8 v12, v1, -0x37

    goto :goto_6

    .line 395
    :cond_14
    const/16 v15, 0x61

    if-lt v1, v15, :cond_15

    const/16 v15, 0x66

    if-gt v1, v15, :cond_15

    .line 396
    add-int/lit8 v12, v1, -0x57

    goto :goto_6

    .line 397
    :cond_15
    if-eqz v11, :cond_16

    .line 400
    new-instance v13, Ljava/io/IOException;

    .line 401
    const-string v14, "security.18E"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 400
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 402
    :cond_16
    const/16 v15, 0x3a

    if-eq v1, v15, :cond_17

    const/16 v15, 0x2f

    if-ne v1, v15, :cond_1c

    .line 403
    :cond_17
    rem-int/lit8 v15, v2, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 406
    new-instance v13, Ljava/io/IOException;

    .line 407
    const-string v14, "security.18E"

    .line 406
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 409
    :cond_18
    const/16 v15, 0x2f

    if-ne v1, v15, :cond_1b

    .line 410
    if-eqz v9, :cond_19

    .line 412
    new-instance v13, Ljava/io/IOException;

    .line 413
    const-string v14, "security.18E"

    .line 412
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 415
    :cond_19
    const/16 v15, 0x10

    if-eq v2, v15, :cond_1a

    .line 417
    new-instance v13, Ljava/io/IOException;

    .line 418
    const-string v14, "security.18F"

    .line 417
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 420
    :cond_1a
    const/4 v9, 0x1

    .line 422
    :cond_1b
    const/4 v4, 0x0

    .line 390
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 425
    :cond_1c
    new-instance v13, Ljava/io/IOException;

    .line 426
    const-string v14, "security.18E"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 425
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 433
    :cond_1d
    if-nez v11, :cond_1e

    .line 435
    shl-int/lit8 v15, v12, 0x4

    int-to-byte v15, v15

    aput-byte v15, v10, v2

    .line 436
    const/4 v11, 0x1

    goto :goto_7

    .line 439
    :cond_1e
    aget-byte v15, v10, v2

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v15, v12

    int-to-byte v15, v15

    aput-byte v15, v10, v2

    .line 441
    rem-int/lit8 v15, v2, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    const/4 v4, 0x1

    .line 442
    :goto_8
    const/4 v11, 0x0

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 441
    :cond_1f
    const/4 v4, 0x0

    goto :goto_8

    .line 451
    .end local v1           #bytik:B
    .end local v4           #expect_delimiter:Z
    .end local v11           #second_hex:Z
    .end local v12           #value:I
    :cond_20
    return-object v10
.end method

.method public static oidStrToInts(Ljava/lang/String;)[I
    .locals 12
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2e

    .line 458
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 459
    .local v0, bytes:[B
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    if-ne v9, v11, :cond_0

    .line 460
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v10, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 462
    :cond_0
    array-length v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    new-array v7, v9, [I

    .line 464
    .local v7, result:[I
    const/4 v3, 0x0

    .line 465
    .local v3, number:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v0

    if-lt v1, v9, :cond_1

    .line 483
    :goto_1
    const/4 v9, 0x2

    if-ge v3, v9, :cond_7

    .line 484
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.18A"

    invoke-static {v10, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 466
    :cond_1
    const/4 v8, 0x0

    .line 467
    .local v8, value:I
    move v5, v1

    .line 468
    .local v5, pos:I
    :goto_2
    array-length v9, v0

    if-ge v1, v9, :cond_2

    aget-byte v9, v0, v1

    const/16 v10, 0x30

    if-lt v9, v10, :cond_2

    aget-byte v9, v0, v1

    const/16 v10, 0x39

    if-le v9, v10, :cond_3

    .line 471
    :cond_2
    if-ne v1, v5, :cond_4

    .line 473
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v10, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 469
    :cond_3
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-byte v10, v0, v1

    add-int/lit8 v10, v10, -0x30

    add-int v8, v9, v10

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 475
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #number:I
    .local v4, number:I
    aput v8, v7, v3

    .line 476
    array-length v9, v0

    if-lt v1, v9, :cond_5

    move v3, v4

    .line 477
    .end local v4           #number:I
    .restart local v3       #number:I
    goto :goto_1

    .line 479
    .end local v3           #number:I
    .restart local v4       #number:I
    :cond_5
    aget-byte v9, v0, v1

    if-eq v9, v11, :cond_6

    .line 480
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v10, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 465
    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #number:I
    .restart local v3       #number:I
    goto :goto_0

    .line 486
    .end local v5           #pos:I
    .end local v8           #value:I
    :cond_7
    new-array v6, v3, [I

    .line 487
    .local v6, res:[I
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v3, :cond_8

    .line 490
    return-object v6

    .line 488
    :cond_8
    aget v9, v7, v1

    aput v9, v6, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "_gname"

    .prologue
    const/4 v1, 0x0

    .line 646
    instance-of v2, p1, Lorg/apache/harmony/security/x509/GeneralName;

    if-nez v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 649
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    .line 650
    .local v0, gname:Lorg/apache/harmony/security/x509/GeneralName;
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    iget v3, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    if-ne v2, v3, :cond_0

    .line 653
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 667
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 657
    :pswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0

    .line 662
    :pswitch_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getAsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 720
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 695
    :pswitch_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x509/OtherName;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/OtherName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :pswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 706
    :pswitch_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/ORAddress;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    :pswitch_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    const-string v2, "RFC2253"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    :pswitch_5
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/EDIPartyName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 715
    :pswitch_6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    if-nez v0, :cond_0

    .line 747
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    .line 749
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-object v0
.end method

.method public getEncodedName()[B
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    if-nez v0, :cond_0

    .line 759
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 807
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    .line 800
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 805
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 794
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z
    .locals 15
    .parameter "gname"

    .prologue
    .line 824
    iget v12, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 825
    const/4 v12, 0x0

    .line 902
    :goto_0
    return v12

    .line 827
    :cond_0
    iget v12, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v12, :pswitch_data_0

    .line 902
    const/4 v12, 0x1

    goto :goto_0

    .line 832
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 833
    iget-object v12, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 832
    invoke-virtual {v13, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v6, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 839
    .local v6, dns:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 840
    .local v1, _dns:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 841
    const/4 v12, 0x1

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    goto :goto_0

    .line 852
    .end local v1           #_dns:Ljava/lang/String;
    .end local v6           #dns:Ljava/lang/String;
    :pswitch_2
    iget-object v11, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 853
    .local v11, uri:Ljava/lang/String;
    const-string v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v5, v12, 0x3

    .line 854
    .local v5, begin:I
    const/16 v12, 0x2f

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 855
    .local v7, end:I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_2

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 857
    .local v8, host:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #uri:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 858
    .restart local v11       #uri:Ljava/lang/String;
    const-string v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v5, v12, 0x3

    .line 859
    const/16 v12, 0x2f

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 860
    const/4 v12, -0x1

    if-ne v7, v12, :cond_3

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, _host:Ljava/lang/String;
    :goto_2
    const-string v12, "."

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 863
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_0

    .line 856
    .end local v2           #_host:Ljava/lang/String;
    .end local v8           #host:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 861
    .restart local v8       #host:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 865
    .restart local v2       #_host:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_0

    .line 869
    .end local v2           #_host:Ljava/lang/String;
    .end local v5           #begin:I
    .end local v7           #end:I
    .end local v8           #host:Ljava/lang/String;
    .end local v11           #uri:Ljava/lang/String;
    :pswitch_3
    iget-object v4, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v4, [B

    .line 870
    .local v4, address:[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 871
    .local v0, _address:[B
    array-length v10, v4

    .line 872
    .local v10, length:I
    array-length v3, v0

    .line 873
    .local v3, _length:I
    if-ne v10, v3, :cond_5

    .line 874
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    goto/16 :goto_0

    .line 875
    :cond_5
    mul-int/lit8 v12, v3, 0x2

    if-ne v10, v12, :cond_9

    .line 876
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    array-length v12, v0

    if-lt v9, v12, :cond_6

    .line 882
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 877
    :cond_6
    aget-byte v12, v0, v9

    aget-byte v13, v4, v9

    if-lt v12, v13, :cond_7

    .line 878
    aget-byte v12, v0, v9

    add-int v13, v9, v3

    aget-byte v13, v4, v13

    if-le v12, v13, :cond_8

    .line 879
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 876
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 884
    .end local v9           #i:I
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 898
    .end local v0           #_address:[B
    .end local v3           #_length:I
    .end local v4           #address:[B
    .end local v10           #length:I
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    goto/16 :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 912
    const-string v0, ""

    .line 913
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 948
    :goto_0
    return-object v0

    .line 915
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "otherName[0]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 915
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    goto :goto_0

    .line 919
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rfc822Name[1]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    goto :goto_0

    .line 922
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dNSName[2]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    goto :goto_0

    .line 925
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uniformResourceIdentifier[6]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    goto :goto_0

    .line 928
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "registeredID[8]: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    goto :goto_0

    .line 931
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x400Address[3]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    goto :goto_0

    .line 935
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "directoryName[4]: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    const-string v3, "RFC2253"

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 935
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    goto/16 :goto_0

    .line 939
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ediPartyName[5]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    goto/16 :goto_0

    .line 943
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "iPAddress[7]: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
