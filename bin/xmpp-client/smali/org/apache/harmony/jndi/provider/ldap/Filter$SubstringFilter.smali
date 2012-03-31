.class public Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
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
    name = "SubstringFilter"
.end annotation


# instance fields
.field private final substrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->type:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method public addAny(Ljava/lang/String;)V
    .locals 3
    .parameter "any"

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public addFinal(Ljava/lang/String;)V
    .locals 3
    .parameter "initial"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addInitial(Ljava/lang/String;)V
    .locals 3
    .parameter "initial"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 121
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->type:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, p1, v2

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 122
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v0, encoded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;>;"
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 130
    return-void

    .line 124
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 126
    .local v1, value:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v4

    .line 127
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSubstrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->substrings:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->type:Ljava/lang/String;

    return-object v0
.end method
