.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Null.java"


# static fields
.field private static final asn1Null:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;->asn1Null:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 39
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;->asn1Null:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 52
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 57
    return-void
.end method
