.class public abstract Lorg/apache/harmony/security/asn1/ASN1StringType;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1StringType.java"


# static fields
.field public static final BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$1;

    .line 38
    const/16 v1, 0x1e

    .line 37
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$1;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 41
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$2;

    .line 42
    const/16 v1, 0x16

    .line 41
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$2;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 45
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$3;

    .line 46
    const/16 v1, 0x1b

    .line 45
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$3;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 49
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$4;

    .line 50
    const/16 v1, 0x13

    .line 49
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$4;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 53
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$5;

    .line 54
    const/16 v1, 0x14

    .line 53
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$5;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 57
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$6;

    .line 58
    const/16 v1, 0x1c

    .line 57
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$6;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 61
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$7;

    .line 62
    const/16 v1, 0xc

    .line 61
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$7;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "tagNumber"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    .line 110
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 120
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    .line 131
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const-string v4, "ISO-8859-1"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 152
    :try_start_0
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, bytes:[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 154
    array-length v2, v0

    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
