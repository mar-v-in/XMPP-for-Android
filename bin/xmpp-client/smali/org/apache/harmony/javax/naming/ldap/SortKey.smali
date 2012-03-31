.class public Lorg/apache/harmony/javax/naming/ldap/SortKey;
.super Ljava/lang/Object;
.source "SortKey.java"


# instance fields
.field ascendingOrder:Z

.field attrID:Ljava/lang/String;

.field matchingRuleID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "attrID"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->attrID:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->matchingRuleID:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->attrID:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->ascendingOrder:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "attrID"
    .parameter "ascendingOrder"
    .parameter "matchingRuleID"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->attrID:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->matchingRuleID:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->attrID:Ljava/lang/String;

    .line 38
    iput-boolean p2, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->ascendingOrder:Z

    .line 39
    iput-object p3, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->matchingRuleID:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getAttributeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->attrID:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingRuleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->matchingRuleID:Ljava/lang/String;

    return-object v0
.end method

.method public isAscending()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortKey;->ascendingOrder:Z

    return v0
.end method
