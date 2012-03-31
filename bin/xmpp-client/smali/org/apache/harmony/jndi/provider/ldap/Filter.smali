.class public Lorg/apache/harmony/jndi/provider/ldap/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;,
        Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
    }
.end annotation


# static fields
.field public static final AND_FILTER:I = 0x0

.field public static final APPROX_MATCH_FILTER:I = 0x8

.field public static final EQUALITY_MATCH_FILTER:I = 0x3

.field public static final EXTENSIBLE_MATCH_FILTER:I = 0x9

.field public static final GREATER_OR_EQUAL_FILTER:I = 0x5

.field public static final LESS_OR_EQUAL_FILTER:I = 0x6

.field public static final NOT_FILTER:I = 0x2

.field public static final OR_FILTER:I = 0x1

.field public static final PRESENT_FILTER:I = 0x7

.field public static final SUBSTRINGS_FILTER:I = 0x4


# instance fields
.field private final index:I

.field private isLeaf:Z

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    const-string v1, "Not a valided filter type: only 0 - 9 is allowed."

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->index:I

    .line 186
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->index:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->index:I

    if-ne v1, v0, :cond_3

    .line 187
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->isLeaf:Z

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_3
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->isLeaf:Z

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 202
    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->isLeaf:Z

    if-nez v1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 204
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    :cond_0
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 226
    :goto_0
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->index:I

    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    aput-object v3, p1, v5

    .line 227
    return-void

    .line 213
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    instance-of v3, v3, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    if-eqz v3, :cond_2

    .line 214
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 215
    .local v2, pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    .line 216
    .local v1, objs:[Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, v1, v5

    .line 217
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    .line 218
    aget-object v3, v1, v4

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 219
    aget-object v3, v1, v4

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, v1, v4

    .line 221
    :cond_1
    move-object v0, v1

    .local v0, encoded:[Ljava/lang/Object;
    goto :goto_0

    .line 223
    .end local v0           #encoded:[Ljava/lang/Object;
    .end local v1           #objs:[Ljava/lang/Object;
    .end local v2           #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    .local v0, encoded:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->isLeaf:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->index:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->isLeaf:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 263
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/Filter;->value:Ljava/lang/Object;

    .line 264
    return-void
.end method
