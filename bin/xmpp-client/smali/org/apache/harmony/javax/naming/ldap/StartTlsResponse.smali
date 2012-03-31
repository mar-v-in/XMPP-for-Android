.class public abstract Lorg/apache/harmony/javax/naming/ldap/StartTlsResponse;
.super Ljava/lang/Object;
.source "StartTlsResponse.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.1466.20037"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getEncodedValue()[B
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "1.3.6.1.4.1.1466.20037"

    return-object v0
.end method

.method public abstract negotiate()Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract negotiate(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
.end method
