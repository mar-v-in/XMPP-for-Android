.class public Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchingRuleAssertion"
.end annotation


# instance fields
.field private dnAttributes:Z

.field private matchValue:Ljava/lang/String;

.field private matchingRule:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->dnAttributes:Z

    .line 45
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 57
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchingRule:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->type:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchValue:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 60
    const/4 v0, 0x3

    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->dnAttributes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    .line 61
    return-void
.end method

.method public getMatchValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchingRule:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDnAttributes()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->dnAttributes:Z

    return v0
.end method

.method public setDnAttributes(Z)V
    .locals 0
    .parameter "dnAttributes"

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->dnAttributes:Z

    .line 81
    return-void
.end method

.method public setMatchValue(Ljava/lang/String;)V
    .locals 0
    .parameter "matchValue"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchValue:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMatchingRule(Ljava/lang/String;)V
    .locals 0
    .parameter "matchingRule"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->matchingRule:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->type:Ljava/lang/String;

    .line 93
    return-void
.end method
