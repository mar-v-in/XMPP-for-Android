.class Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;
.super Ljava/io/InputStream;
.source "LdapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputStreamWrap"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 255
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    .line 256
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 266
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 271
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "bs"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p3, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 300
    return-void
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
