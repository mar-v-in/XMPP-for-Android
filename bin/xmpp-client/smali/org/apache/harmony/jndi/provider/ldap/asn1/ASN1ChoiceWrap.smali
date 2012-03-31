.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "ASN1ChoiceWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    }
.end annotation


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "types"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 60
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 70
    instance-of v3, p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 72
    .local v0, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v3

    .line 82
    .end local v0           #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    .end local p1
    :goto_0
    return v3

    .line 75
    .restart local p1
    :cond_0
    instance-of v3, p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    if-eqz v3, :cond_1

    .line 76
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    .line 77
    .local v1, value:[Ljava/lang/Object;
    check-cast p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    .end local p1
    invoke-interface {p1, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;->encodeValues([Ljava/lang/Object;)V

    .line 78
    aget-object v3, v1, v4

    invoke-virtual {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;->getIndex(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .end local v1           #value:[Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v2, p1

    .line 81
    check-cast v2, [Ljava/lang/Object;

    .line 82
    .local v2, values:[Ljava/lang/Object;
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 87
    instance-of v2, p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 89
    .local v0, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 98
    .end local v0           #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    .end local p1
    :goto_0
    return-object v2

    .line 92
    .restart local p1
    :cond_0
    instance-of v2, p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    if-eqz v2, :cond_1

    .line 93
    new-array v1, v3, [Ljava/lang/Object;

    .line 94
    .local v1, value:[Ljava/lang/Object;
    check-cast p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    .end local p1
    invoke-interface {p1, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;->encodeValues([Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v1           #value:[Ljava/lang/Object;
    .restart local p1
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    aget-object v2, p1, v3

    goto :goto_0
.end method
