.class Lorg/apache/harmony/security/x501/Name$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/Name;
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
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .parameter "in"

    .prologue
    .line 80
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "object"

    .prologue
    .line 85
    check-cast p1, Lorg/apache/harmony/security/x501/Name;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;
    invoke-static {p1}, Lorg/apache/harmony/security/x501/Name;->access$1(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
