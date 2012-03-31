.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ASN1SequenceWrap.java"


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 39
    instance-of v1, p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 40
    check-cast p1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    .end local p1
    invoke-interface {p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;->encodeValues([Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 42
    check-cast v0, [Ljava/lang/Object;

    .line 43
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
