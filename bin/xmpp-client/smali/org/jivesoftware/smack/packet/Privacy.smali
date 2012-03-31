.class public Lorg/jivesoftware/smack/packet/Privacy;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Privacy.java"


# instance fields
.field private activeName:Ljava/lang/String;

.field private declineActiveList:Z

.field private declineDefaultList:Z

.field private defaultName:Ljava/lang/String;

.field private final itemLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineActiveList:Z

    .line 62
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineDefaultList:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->itemLists:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public changeDefaultList(Ljava/lang/String;)Z
    .locals 1
    .parameter "newDefault"

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteList(Ljava/lang/String;)V
    .locals 1
    .parameter "listName"

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public deletePrivacyList(Ljava/lang/String;)V
    .locals 1
    .parameter "listName"

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getActiveName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->activeName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivePrivacyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 8

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v5, "<query xmlns=\"jabber:iq:privacy\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->isDeclineActiveList()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    const-string v5, "<active/>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->isDeclineDefaultList()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    const-string v5, "<default/>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v5

    .line 169
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 168
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getExtensionsXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v5, "</query>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 152
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "<active name=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 154
    const-string v6, "\"/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 162
    const-string v5, "<default name=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const-string v6, "\"/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .local v4, listName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 173
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    const-string v6, "<list name=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 183
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 184
    const-string v6, "</list>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 176
    :cond_6
    const-string v6, "<list name=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 178
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/PrivacyItem;

    .line 180
    .local v2, item:Lorg/jivesoftware/smack/packet/PrivacyItem;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/PrivacyItem;->toXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPrivacyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;I)Lorg/jivesoftware/smack/packet/PrivacyItem;
    .locals 4
    .parameter "listName"
    .parameter "order"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 231
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    .local v2, values:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, itemFound:Lorg/jivesoftware/smack/packet/PrivacyItem;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    :cond_1
    return-object v1

    .line 234
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PrivacyItem;

    .line 235
    .local v0, element:Lorg/jivesoftware/smack/packet/PrivacyItem;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getOrder()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 236
    move-object v1, v0

    goto :goto_0
.end method

.method public getItemLists()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->itemLists:Ljava/util/Map;

    return-object v0
.end method

.method public getPrivacyList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "listName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPrivacyListNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->itemLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isDeclineActiveList()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineActiveList:Z

    return v0
.end method

.method public isDeclineDefaultList()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineDefaultList:Z

    return v0
.end method

.method public setActiveName(Ljava/lang/String;)V
    .locals 0
    .parameter "activeName"

    .prologue
    .line 303
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Privacy;->activeName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setActivePrivacyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setDeclineActiveList(Z)V
    .locals 0
    .parameter "declineActiveList"

    .prologue
    .line 323
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineActiveList:Z

    .line 324
    return-void
.end method

.method public setDeclineDefaultList(Z)V
    .locals 0
    .parameter "declineDefaultList"

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/Privacy;->declineDefaultList:Z

    .line 334
    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultName"

    .prologue
    .line 348
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Privacy;->defaultName:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "listName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, listItem:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-object p2
.end method
