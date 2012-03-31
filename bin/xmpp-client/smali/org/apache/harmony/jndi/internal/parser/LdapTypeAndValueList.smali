.class public Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;
.super Ljava/lang/Object;
.source "LdapTypeAndValueList.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;

.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p2}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    .line 176
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p2}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;-><init>(Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->list:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ldap.1B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toAttributeList()Ljava/util/List;
    .locals 9

    .prologue
    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v5, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    return-object v5

    .line 212
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    .line 213
    .local v1, element:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    .line 214
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->getStringValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 213
    invoke-direct {v0, v7, v8}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 215
    .local v0, ba:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 216
    .local v6, list2:Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 220
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;

    .line 218
    .local v2, elementList:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList$ValueWrapper;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->attributes:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ldap.1B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
