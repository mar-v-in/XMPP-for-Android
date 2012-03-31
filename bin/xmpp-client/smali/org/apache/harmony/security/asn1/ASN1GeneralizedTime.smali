.class public Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1GeneralizedTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime; = null

.field private static final GEN_PATTERN:Ljava/lang/String; = "yyyyMMddHHmmss.SSS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    .line 75
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    .line 87
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 95
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeGeneralizedTime()V

    .line 96
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 9
    .parameter "out"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 101
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss.SSS"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, temp:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x30

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, currLength:I
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .local v2, nullId:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    move v8, v6

    .line 108
    :goto_1
    if-ne v2, v0, :cond_3

    move v5, v6

    :goto_2
    and-int/2addr v5, v8

    if-nez v5, :cond_1

    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_0

    .line 113
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 117
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Z"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v5, [B

    array-length v5, v5

    iput v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 123
    return-void

    .line 109
    :cond_1
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v8, v7

    .line 107
    goto :goto_1

    :cond_3
    move v5, v7

    .line 108
    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
