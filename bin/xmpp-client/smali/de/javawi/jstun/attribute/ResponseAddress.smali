.class public Lde/javawi/jstun/attribute/ResponseAddress;
.super Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.source "ResponseAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 25
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/MessageAttribute;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lde/javawi/jstun/attribute/ResponseAddress;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ResponseAddress;-><init>()V

    .line 19
    .local v0, ra:Lde/javawi/jstun/attribute/ResponseAddress;
    invoke-static {v0, p0}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->parse(Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;

    .line 20
    return-object v0
.end method
