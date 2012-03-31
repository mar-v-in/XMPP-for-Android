.class public Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;
.super Lorg/apache/harmony/jndi/provider/GenericURLContext;
.source "ldapURLContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/DirContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/GenericURLContext;-><init>(Ljava/util/Hashtable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;-><init>(Ljava/util/Hashtable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "url"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 87
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 90
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v2

    .line 93
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 94
    throw v2
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 62
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 68
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 75
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 79
    throw v1
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "url"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 121
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 124
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 127
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 124
    return-object v2

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 128
    throw v2
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 100
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 106
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 111
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    .line 113
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 114
    throw v1
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 173
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 176
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 178
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 176
    return-object v2

    .line 177
    :catchall_0
    move-exception v2

    .line 178
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 179
    throw v2
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 3
    .parameter "url"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 186
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 189
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 191
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 189
    return-object v2

    .line 190
    :catchall_0
    move-exception v2

    .line 191
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 192
    throw v2
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 133
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 139
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 144
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 146
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    .line 146
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 147
    throw v1
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 3
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 153
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 159
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 161
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 164
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 166
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 167
    throw v1
.end method

.method protected bridge synthetic getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method protected getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->createCannotProceedException(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/CannotProceedException;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getContinuationDirContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method protected getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    .locals 9
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/spi/ResolveResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 205
    .local p2, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v4, 0x0

    .line 206
    .local v4, myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    if-nez p2, :cond_0

    .line 207
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    .line 212
    :goto_0
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v5

    .line 214
    .local v5, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, host:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v6

    .line 216
    .local v6, port:I
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, dn:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v7

    .line 218
    invoke-static {v3, v6, v4, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v0

    .line 221
    .local v0, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v1, v0, v4, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 225
    .local v1, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    new-instance v7, Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    const-string v8, ""

    invoke-direct {v7, v1, v8}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v7

    .line 209
    .end local v0           #client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    .end local v1           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v2           #dn:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    .end local v6           #port:I
    :cond_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    check-cast v4, Ljava/util/Hashtable;

    .restart local v4       #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    goto :goto_0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 250
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 253
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 255
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 253
    return-object v2

    .line 254
    :catchall_0
    move-exception v2

    .line 255
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 256
    throw v2
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 230
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 236
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 238
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 241
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 243
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    .line 243
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 244
    throw v1
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 283
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 286
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 288
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 286
    return-object v2

    .line 287
    :catchall_0
    move-exception v2

    .line 288
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 289
    throw v2
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 262
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 270
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 273
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 275
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 276
    throw v1
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "url"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 342
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 345
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 350
    return-void

    .line 346
    :catchall_0
    move-exception v2

    .line 347
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 348
    throw v2
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 3
    .parameter "url"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 356
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 359
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 364
    return-void

    .line 361
    :catchall_0
    move-exception v2

    .line 362
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 363
    throw v2
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 295
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 301
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 307
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    .line 310
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 311
    throw v1
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 3
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 318
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 324
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 330
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v1

    .line 333
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 334
    throw v1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "url"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 394
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 397
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 402
    return-void

    .line 398
    :catchall_0
    move-exception v2

    .line 399
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 400
    throw v2
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 369
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 371
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 375
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 388
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 382
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v1

    .line 385
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 386
    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "url"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 14
    .parameter "url"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 588
    const/4 v12, 0x1

    invoke-static {p1, v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v8

    .line 589
    .local v8, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, dn:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, host:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v9

    .line 594
    .local v9, port:I
    iget-object v12, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v13

    .line 593
    invoke-static {v7, v9, v12, v13}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v1

    .line 595
    .local v1, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    const/4 v2, 0x0

    .line 598
    .local v2, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :try_start_0
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v12, p0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    invoke-direct {v3, v1, v12, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 600
    .end local v2           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .local v3, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v6

    .line 601
    .local v6, f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    if-nez v6, :cond_0

    .line 602
    invoke-static/range {p2 .. p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parseFilter(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v6

    .line 605
    :cond_0
    if-nez p4, :cond_1

    .line 606
    new-instance v11, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v11}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .end local p4
    .local v11, searchControls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    move-object/from16 p4, v11

    .line 608
    .end local v11           #searchControls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .restart local p4
    :cond_1
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 609
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;

    move-result-object v4

    .line 610
    .local v4, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 612
    invoke-virtual {v4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v12

    .line 611
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 614
    :cond_2
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 615
    invoke-virtual {v4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getSearchScope()I

    move-result v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 619
    .end local v4           #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v3, v5, v6, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v10

    .line 622
    .local v10, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 623
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v12

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    .end local v6           #f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v10           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :catchall_0
    move-exception v12

    move-object v2, v3

    .line 628
    .end local v3           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v2       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :goto_0
    if-eqz v2, :cond_4

    .line 629
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->close()V

    .line 631
    :cond_4
    throw v12

    .line 626
    .end local v2           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v3       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v6       #f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .restart local v10       #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :cond_5
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toSearchResultEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 628
    if-eqz v3, :cond_6

    .line 629
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->close()V

    .line 626
    :cond_6
    return-object v12

    .line 627
    .end local v3           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v6           #f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v10           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    .restart local v2       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :catchall_1
    move-exception v12

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "url"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 23
    .parameter "url"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 511
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v15

    .line 512
    .local v15, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v11

    .line 513
    .local v11, dn:Ljava/lang/String;
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 514
    .local v14, host:Ljava/lang/String;
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v16

    .line 517
    .local v16, port:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v21

    .line 516
    move/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v14, v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v7

    .line 518
    .local v7, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    const/4 v8, 0x0

    .line 520
    .local v8, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :try_start_0
    new-instance v9, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->environment:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v7, v0, v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    .end local v8           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .local v9, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :try_start_1
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;

    move-result-object v10

    .line 523
    .local v10, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    if-nez v10, :cond_3

    .line 524
    new-instance v10, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .end local v10           #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-direct {v10}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 525
    .restart local v10       #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 531
    :cond_0
    :goto_0
    const/4 v13, 0x0

    .line 532
    .local v13, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 534
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v13

    .line 569
    :cond_1
    :goto_1
    invoke-virtual {v9, v11, v13, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v17

    .line 572
    .local v17, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 573
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v20

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    .end local v10           #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .end local v13           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v17           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :catchall_0
    move-exception v20

    move-object v8, v9

    .line 578
    .end local v9           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v8       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :goto_2
    if-eqz v8, :cond_2

    .line 579
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->close()V

    .line 581
    :cond_2
    throw v20

    .line 526
    .end local v8           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v9       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .restart local v10       #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    :cond_3
    :try_start_2
    invoke-virtual {v15}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes()Z

    move-result v20

    if-nez v20, :cond_0

    .line 527
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    goto :goto_0

    .line 537
    .restart local v13       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v20

    if-nez v20, :cond_6

    .line 539
    :cond_5
    new-instance v13, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v13           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 540
    .restart local v13       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v20, "objectClass"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 542
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 543
    new-instance v13, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v13           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 544
    .restart local v13       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 545
    .local v3, att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    new-instance v20, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 546
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 549
    .end local v3           #att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v5

    .line 550
    .local v5, attrs:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    new-instance v13, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v13           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 551
    .restart local v13       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :cond_8
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 552
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 553
    .local v4, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v18

    .line 555
    .local v18, type:Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v12

    .line 556
    .local v12, enuValues:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_3
    invoke-interface {v12}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 557
    invoke-interface {v12}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v19

    .line 558
    .local v19, value:Ljava/lang/Object;
    new-instance v6, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 559
    const/16 v20, 0x3

    .line 558
    move/from16 v0, v20

    invoke-direct {v6, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 560
    .local v6, child:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v20, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 561
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v13, v6}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    goto :goto_3

    .line 576
    .end local v4           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v5           #attrs:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .end local v6           #child:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v12           #enuValues:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/Object;
    .restart local v17       #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toSearchResultEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    .line 578
    if-eqz v9, :cond_a

    .line 579
    invoke-virtual {v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->close()V

    .line 576
    :cond_a
    return-object v20

    .line 577
    .end local v9           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v10           #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .end local v13           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v17           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    .restart local v8       #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :catchall_1
    move-exception v20

    goto/16 :goto_2
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 475
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 481
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 484
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 487
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 490
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v1

    .line 490
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 491
    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 452
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 454
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 458
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    .line 461
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 464
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 468
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v1

    .line 468
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 469
    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 407
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 413
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 419
    :goto_0
    return-object v1

    .line 416
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 419
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 422
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v1

    .line 422
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 423
    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 429
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 435
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 441
    :goto_0
    return-object v1

    .line 438
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 441
    .local v0, context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 444
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v1

    .line 444
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->close()V

    .line 445
    throw v1
.end method
