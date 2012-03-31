.class Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;
.super Ljava/lang/Object;
.source "LdapTypeAndValueList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->this$0:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->value:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 74
    check-cast p1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->value:Ljava/lang/Object;

    return-object v0
.end method
