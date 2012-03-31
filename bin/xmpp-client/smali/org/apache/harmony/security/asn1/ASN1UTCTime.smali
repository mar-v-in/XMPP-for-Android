.class public Lorg/apache/harmony/security/asn1/ASN1UTCTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1UTCTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime; = null

.field public static final UTC_HM:I = 0xb

.field public static final UTC_HMS:I = 0xd

.field public static final UTC_LOCAL_HM:I = 0xf

.field public static final UTC_LOCAL_HMS:I = 0x11

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyMMddHHmmss\'Z\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    .line 93
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1UTCTime;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

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
    .line 97
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    .line 99
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeUTCTime()V

    .line 113
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 117
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMddHHmmss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    :try_start_0
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 125
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
