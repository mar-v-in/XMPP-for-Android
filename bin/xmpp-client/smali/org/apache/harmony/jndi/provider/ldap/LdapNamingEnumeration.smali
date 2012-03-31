.class public Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;
.super Ljava/lang/Object;
.source "LdapNamingEnumeration.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/NamingEnumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/harmony/javax/naming/NamingEnumeration",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L


# instance fields
.field private exception:Lorg/apache/harmony/javax/naming/NamingException;

.field private isFinished:Z

.field private final timeout:J

.field private values:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V
    .locals 1
    .parameter
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/harmony/javax/naming/NamingException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;Z)V
    .locals 2
    .parameter
    .parameter "ex"
    .parameter "isFinished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/harmony/javax/naming/NamingException;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->timeout:J

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    .line 77
    :goto_0
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    .line 78
    iput-boolean p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private waitMoreElement()V
    .locals 3

    .prologue
    .line 243
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter "isFinished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    .local p1, pair:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    if-eqz p2, :cond_1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method add(Ljava/util/Collection;Z)V
    .locals 2
    .parameter
    .parameter "isFinished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 88
    if-eqz p2, :cond_1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 117
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    .line 117
    monitor-exit v1

    .line 121
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasMore()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v3, :cond_3

    .line 136
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->waitMoreElement()V

    .line 137
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 138
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 134
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->close()V

    .line 145
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v1, :cond_4

    .line 146
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    throw v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :cond_4
    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Lorg/apache/harmony/javax/naming/CommunicationException;

    const-string v1, "ldap.31"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasMoreElements()Z
    .locals 4

    .prologue
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v3, :cond_2

    .line 169
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->waitMoreElement()V

    .line 170
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 167
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 180
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v0, :cond_4

    .line 196
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->waitMoreElement()V

    .line 198
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v0, :cond_3

    .line 199
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    throw v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/harmony/javax/naming/CommunicationException;

    .line 204
    const-string v2, "ldap.31"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 209
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    if-nez v0, :cond_2

    .line 221
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->waitMoreElement()V

    .line 222
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method setException(Lorg/apache/harmony/javax/naming/NamingException;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 231
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    .line 232
    return-void
.end method

.method setFinished()V
    .locals 2

    .prologue
    .line 235
    .local p0, this:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;,"Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration<TT;>;"
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    monitor-enter v1

    .line 236
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->isFinished:Z

    .line 237
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->values:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit v1

    .line 239
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
