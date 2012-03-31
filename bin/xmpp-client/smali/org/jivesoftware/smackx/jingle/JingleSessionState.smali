.class public abstract Lorg/jivesoftware/smackx/jingle/JingleSessionState;
.super Ljava/lang/Object;
.source "JingleSessionState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract enter()V
.end method

.method public abstract exit()V
.end method

.method public abstract processJingle(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)Lorg/jivesoftware/smack/packet/IQ;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
