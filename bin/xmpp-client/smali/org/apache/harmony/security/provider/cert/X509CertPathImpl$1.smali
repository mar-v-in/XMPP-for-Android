.class Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 237
    .local v1, encodings:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 238
    .local v3, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v0, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 248
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl;)V

    return-object v4

    .line 243
    :cond_0
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .line 244
    sget-object v6, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 245
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v4

    .line 244
    check-cast v4, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v5, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 261
    .local v0, cp:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    #getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$1(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    :cond_0
    return-object v2

    .line 264
    :cond_1
    #getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$1(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 265
    .local v4, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v2, encodings:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 270
    :try_start_0
    #getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$1(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 274
    const-string v6, "security.161"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
