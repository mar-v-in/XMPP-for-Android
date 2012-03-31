.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1LdapFilter.java"


# static fields
.field private static type:Lorg/apache/harmony/security/asn1/ASN1Choice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
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
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 53
    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v3, :cond_0

    .line 54
    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Filter:Lorg/apache/harmony/security/asn1/ASN1Type;

    check-cast v3, Lorg/apache/harmony/security/asn1/ASN1Choice;

    sput-object v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 57
    :cond_0
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    instance-of v3, v3, [B

    if-nez v3, :cond_1

    .line 58
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 59
    .local v1, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v2

    .line 60
    .local v2, index:I
    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 61
    .local v0, bytes:[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 62
    array-length v3, v0

    iput v3, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 65
    .end local v0           #bytes:[B
    .end local v1           #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 66
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 1
    .parameter "out"

    .prologue
    .line 76
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 81
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v4, :cond_0

    .line 82
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Filter:Lorg/apache/harmony/security/asn1/ASN1Type;

    check-cast v4, Lorg/apache/harmony/security/asn1/ASN1Choice;

    sput-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    instance-of v4, v4, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    if-eqz v4, :cond_1

    .line 87
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    .line 88
    .local v3, values:[Ljava/lang/Object;
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v4, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    invoke-virtual {v4, v3}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->encodeValues([Ljava/lang/Object;)V

    .line 89
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .end local v1           #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 94
    .end local v3           #values:[Ljava/lang/Object;
    .restart local v1       #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v2

    .line 95
    .local v2, index:I
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;->type:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget-object v4, v4, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v4, v4, v2

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 97
    .local v0, bytes:[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 98
    array-length v4, v0

    iput v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 99
    return-void

    .line 91
    .end local v0           #bytes:[B
    .end local v2           #index:I
    :cond_1
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local v1           #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .restart local v1       #chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    goto :goto_0
.end method
