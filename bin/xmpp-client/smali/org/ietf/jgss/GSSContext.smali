.class public interface abstract Lorg/ietf/jgss/GSSContext;
.super Ljava/lang/Object;
.source "GSSContext.java"


# static fields
.field public static final DEFAULT_LIFETIME:I = 0x0

.field public static final INDEFINITE_LIFETIME:I = 0x7fffffff


# virtual methods
.method public abstract acceptSecContext(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract acceptSecContext([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract export()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getAnonymityState()Z
.end method

.method public abstract getConfState()Z
.end method

.method public abstract getCredDelegState()Z
.end method

.method public abstract getDelegCred()Lorg/ietf/jgss/GSSCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getIntegState()Z
.end method

.method public abstract getLifetime()I
.end method

.method public abstract getMIC(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/ietf/jgss/MessageProp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getMIC([BIILorg/ietf/jgss/MessageProp;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getMech()Lorg/ietf/jgss/Oid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getMutualAuthState()Z
.end method

.method public abstract getReplayDetState()Z
.end method

.method public abstract getSequenceDetState()Z
.end method

.method public abstract getSrcName()Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getTargName()Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getWrapSizeLimit(IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract initSecContext(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract initSecContext([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract isEstablished()Z
.end method

.method public abstract isInitiator()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract isProtReady()Z
.end method

.method public abstract isTransferable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestAnonymity(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestConf(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestCredDeleg(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestInteg(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestLifetime(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestMutualAuth(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestReplayDet(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract requestSequenceDet(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract setChannelBinding(Lorg/ietf/jgss/ChannelBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract unwrap(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/ietf/jgss/MessageProp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract unwrap([BIILorg/ietf/jgss/MessageProp;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract verifyMIC(Ljava/io/InputStream;Ljava/io/InputStream;Lorg/ietf/jgss/MessageProp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract verifyMIC([BII[BIILorg/ietf/jgss/MessageProp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract wrap(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/ietf/jgss/MessageProp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract wrap([BIILorg/ietf/jgss/MessageProp;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method
