.class public Lorg/jivesoftware/smackx/jingle/JingleException;
.super Lorg/jivesoftware/smack/XMPPException;
.source "JingleException.java"


# static fields
.field private static final serialVersionUID:J = -0x678cc78966cdebeaL


# instance fields
.field private final error:Lorg/jivesoftware/smackx/packet/JingleError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPException;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleException;->error:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleException;->error:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPException;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleException;->error:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 36
    return-void
.end method


# virtual methods
.method public getError()Lorg/jivesoftware/smackx/packet/JingleError;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleException;->error:Lorg/jivesoftware/smackx/packet/JingleError;

    return-object v0
.end method
