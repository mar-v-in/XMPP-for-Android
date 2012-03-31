.class public Lde/javawi/jstun/attribute/MessageIntegrity;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "MessageIntegrity.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 22
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/MessageIntegrity;
    .locals 1
    .parameter "data"

    .prologue
    .line 16
    new-instance v0, Lde/javawi/jstun/attribute/MessageIntegrity;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/MessageIntegrity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
