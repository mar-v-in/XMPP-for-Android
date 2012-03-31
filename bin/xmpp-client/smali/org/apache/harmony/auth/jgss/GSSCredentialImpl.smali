.class public Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;
.super Ljava/lang/Object;
.source "GSSCredentialImpl.java"

# interfaces
.implements Lorg/ietf/jgss/GSSCredential;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    }
.end annotation


# instance fields
.field private final credentials:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;",
            "Lorg/apache/harmony/auth/jgss/GSSCredentialElement;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCredentialElement:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

.field private disposed:Z

.field private final managerImpl:Lorg/apache/harmony/auth/jgss/GSSManagerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/auth/jgss/GSSManagerImpl;)V
    .locals 1
    .parameter "managerImpl"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    .line 65
    iput-object p1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->managerImpl:Lorg/apache/harmony/auth/jgss/GSSManagerImpl;

    .line 66
    return-void
.end method

.method private checkDisposed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->disposed:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lorg/ietf/jgss/GSSException;

    const/4 v1, 0x3

    .line 95
    const/4 v2, 0x0

    .line 96
    const-string v3, "credential disposed"

    .line 94
    invoke-direct {v0, v1, v2, v3}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/ietf/jgss/GSSName;IILorg/ietf/jgss/Oid;I)V
    .locals 8
    .parameter "name"
    .parameter "initLifetime"
    .parameter "acceptLifetime"
    .parameter "mech"
    .parameter "usage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 73
    if-nez p4, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->managerImpl:Lorg/apache/harmony/auth/jgss/GSSManagerImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->getDefaultMech()Lorg/ietf/jgss/Oid;

    move-result-object p4

    .line 77
    :cond_0
    new-instance v7, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    invoke-direct {v7, p4, p5}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;-><init>(Lorg/ietf/jgss/Oid;I)V

    .line 79
    .local v7, credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lorg/ietf/jgss/GSSException;

    const/16 v1, 0x11

    .line 81
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-direct {v0, v1, v2, v3}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->managerImpl:Lorg/apache/harmony/auth/jgss/GSSManagerImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 86
    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->createCredentialElement(Lorg/ietf/jgss/GSSName;IILorg/ietf/jgss/Oid;I)Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    move-result-object v6

    .line 88
    .local v6, credentialElement:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    iput-object v6, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->defaultCredentialElement:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public dispose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->disposed:Z

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->disposed:Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 107
    .local v0, credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->dispose()V

    goto :goto_1
.end method

.method public getMechs()[Lorg/ietf/jgss/Oid;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, mechs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/ietf/jgss/Oid;>;"
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/ietf/jgss/Oid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/ietf/jgss/Oid;

    return-object v3

    .line 116
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 117
    .local v0, credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    iget-object v1, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    .line 118
    .local v1, mech:Lorg/ietf/jgss/Oid;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getName()Lorg/ietf/jgss/GSSName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->defaultCredentialElement:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getName()Lorg/ietf/jgss/GSSName;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 7
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    iget-object v2, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 135
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    :goto_0
    if-nez v0, :cond_2

    .line 143
    new-instance v2, Lorg/ietf/jgss/GSSException;

    const/4 v3, 0x2

    .line 144
    const/4 v4, 0x0

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fail to get name for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-direct {v2, v3, v4, v5}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v2

    .line 136
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;Lorg/apache/harmony/auth/jgss/GSSCredentialElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    iget-object v2, v2, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    invoke-virtual {v2, p1}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 139
    .restart local v0       #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    goto :goto_0

    .line 147
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;Lorg/apache/harmony/auth/jgss/GSSCredentialElement;>;"
    :cond_2
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getName()Lorg/ietf/jgss/GSSName;

    move-result-object v2

    return-object v2
.end method

.method public getRemainingAcceptLifetime(Lorg/ietf/jgss/Oid;)I
    .locals 8
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 152
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    const/high16 v1, -0x8000

    .line 155
    .local v1, remainingAcceptLifetime:I
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    new-instance v4, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 156
    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;-><init>(Lorg/ietf/jgss/Oid;I)V

    .line 155
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 157
    .restart local v0       #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingAcceptLifetime()I

    move-result v1

    .line 160
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    .line 161
    new-instance v4, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    invoke-direct {v4, p1, v7}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;-><init>(Lorg/ietf/jgss/Oid;I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 163
    .local v2, tempCredential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    if-eqz v2, :cond_1

    .line 164
    move-object v0, v2

    .line 166
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingAcceptLifetime()I

    move-result v3

    .line 165
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    :cond_1
    if-nez v0, :cond_2

    .line 170
    new-instance v3, Lorg/ietf/jgss/GSSException;

    const/4 v4, 0x2

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no credential for mech "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-direct {v3, v4, v7, v5}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v3

    .line 174
    :cond_2
    return v1
.end method

.method public getRemainingInitLifetime(Lorg/ietf/jgss/Oid;)I
    .locals 8
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    const/high16 v1, -0x8000

    .line 182
    .local v1, remainingInitLifetime:I
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    new-instance v4, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 183
    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;-><init>(Lorg/ietf/jgss/Oid;I)V

    .line 182
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 184
    .restart local v0       #credential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingInitLifetime()I

    move-result v1

    .line 187
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    .line 188
    new-instance v4, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    invoke-direct {v4, p1, v7}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;-><init>(Lorg/ietf/jgss/Oid;I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 190
    .local v2, tempCredential:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    if-eqz v2, :cond_1

    .line 191
    move-object v0, v2

    .line 193
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingInitLifetime()I

    move-result v3

    .line 192
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 196
    :cond_1
    if-nez v0, :cond_2

    .line 197
    new-instance v3, Lorg/ietf/jgss/GSSException;

    const/4 v4, 0x2

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no credential for mech "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-direct {v3, v4, v7, v5}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v3

    .line 201
    :cond_2
    return v1
.end method

.method public getRemainingLifetime()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 207
    const v4, 0x7fffffff

    .line 208
    .local v4, remainingLifeTime:I
    iget-object v5, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    .line 209
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 208
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    return v4

    .line 209
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, credential:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;Lorg/apache/harmony/auth/jgss/GSSCredentialElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 212
    .local v3, credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;

    .line 214
    .local v1, credentialElement:Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    iget v6, v3, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    packed-switch v6, :pswitch_data_0

    .line 225
    invoke-interface {v1}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingInitLifetime()I

    move-result v6

    .line 226
    invoke-interface {v1}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingAcceptLifetime()I

    move-result v7

    .line 224
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 229
    .local v2, credentialRemainingLifeTime:I
    :goto_1
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 217
    .end local v2           #credentialRemainingLifeTime:I
    :pswitch_0
    invoke-interface {v1}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingInitLifetime()I

    move-result v2

    .line 218
    .restart local v2       #credentialRemainingLifeTime:I
    goto :goto_1

    .line 221
    .end local v2           #credentialRemainingLifeTime:I
    :pswitch_1
    invoke-interface {v1}, Lorg/apache/harmony/auth/jgss/GSSCredentialElement;->getRemainingAcceptLifetime()I

    move-result v2

    .line 222
    .restart local v2       #credentialRemainingLifeTime:I
    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUsage()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, isInitiate:Z
    const/4 v1, 0x0

    .line 241
    .local v1, isAccept:Z
    iget-object v4, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2           #isInitiate:Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 254
    if-eqz v2, :cond_2

    .line 255
    if-eqz v1, :cond_1

    .line 261
    :goto_1
    return v3

    .line 241
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 242
    .local v0, credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    iget v5, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    const/4 v1, 0x1

    move v2, v1

    .local v2, isInitiate:I
    goto :goto_0

    .line 244
    .end local v2           #isInitiate:I
    :pswitch_1
    const/4 v2, 0x1

    .line 245
    .local v2, isInitiate:Z
    goto :goto_0

    .line 247
    .end local v2           #isInitiate:Z
    :pswitch_2
    const/4 v1, 0x1

    .line 248
    goto :goto_0

    .line 258
    .end local v0           #credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 260
    :cond_2
    if-eqz v1, :cond_3

    .line 261
    const/4 v3, 0x2

    goto :goto_1

    .line 263
    :cond_3
    new-instance v4, Lorg/ietf/jgss/GSSException;

    const/16 v5, 0xb

    .line 265
    const-string v6, "no credential element in this credential"

    .line 263
    invoke-direct {v4, v5, v3, v6}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v4

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUsage(Lorg/ietf/jgss/Oid;)I
    .locals 8
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 270
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->checkDisposed()V

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, isInitiate:Z
    const/4 v1, 0x0

    .line 273
    .local v1, isAccept:Z
    iget-object v5, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;->credentials:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2           #isInitiate:Z
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 288
    if-eqz v2, :cond_3

    .line 289
    if-eqz v1, :cond_2

    .line 295
    :goto_1
    return v3

    .line 273
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 274
    .local v0, credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    iget-object v6, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    invoke-virtual {v6, p1}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    iget v6, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    const/4 v1, 0x1

    move v2, v1

    .local v2, isInitiate:I
    goto :goto_0

    .line 277
    .end local v2           #isInitiate:I
    :pswitch_1
    const/4 v2, 0x1

    .line 278
    .local v2, isInitiate:Z
    goto :goto_0

    .line 280
    .end local v2           #isInitiate:Z
    :pswitch_2
    const/4 v1, 0x1

    .line 281
    goto :goto_0

    .line 292
    .end local v0           #credentialType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 294
    :cond_3
    if-eqz v1, :cond_4

    move v3, v4

    .line 295
    goto :goto_1

    .line 297
    :cond_4
    new-instance v5, Lorg/ietf/jgss/GSSException;

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no credential for mech "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-direct {v5, v4, v3, v6}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v5

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
