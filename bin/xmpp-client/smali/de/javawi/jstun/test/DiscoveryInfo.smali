.class public Lde/javawi/jstun/test/DiscoveryInfo;
.super Ljava/lang/Object;
.source "DiscoveryInfo.java"


# instance fields
.field private blockedUDP:Z

.field private error:Z

.field private errorReason:Ljava/lang/String;

.field private errorResponseCode:I

.field private fullCone:Z

.field private openAccess:Z

.field private portRestrictedCone:Z

.field private publicIP:Ljava/net/InetAddress;

.field private restrictedCone:Z

.field private symmetric:Z

.field private symmetricUDPFirewall:Z

.field private final testIP:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "testIP"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    .line 21
    iput v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->errorResponseCode:I

    .line 23
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->openAccess:Z

    .line 24
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->blockedUDP:Z

    .line 25
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->fullCone:Z

    .line 26
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->restrictedCone:Z

    .line 27
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->portRestrictedCone:Z

    .line 28
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetric:Z

    .line 29
    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetricUDPFirewall:Z

    .line 33
    iput-object p1, p0, Lde/javawi/jstun/test/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    .line 34
    return-void
.end method


# virtual methods
.method public getLocalIP()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPublicIP()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public isBlockedUDP()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->blockedUDP:Z

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    return v0
.end method

.method public isFullCone()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->fullCone:Z

    goto :goto_0
.end method

.method public isOpenAccess()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->openAccess:Z

    goto :goto_0
.end method

.method public isPortRestrictedCone()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->portRestrictedCone:Z

    goto :goto_0
.end method

.method public isRestrictedCone()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->restrictedCone:Z

    goto :goto_0
.end method

.method public isSymmetric()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetric:Z

    goto :goto_0
.end method

.method public isSymmetricUDPFirewall()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetricUDPFirewall:Z

    goto :goto_0
.end method

.method public setBlockedUDP()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->blockedUDP:Z

    .line 99
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 1
    .parameter "responseCode"
    .parameter "reason"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    .line 103
    iput p1, p0, Lde/javawi/jstun/test/DiscoveryInfo;->errorResponseCode:I

    .line 104
    iput-object p2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->errorReason:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFullCone()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->fullCone:Z

    .line 109
    return-void
.end method

.method public setOpenAccess()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->openAccess:Z

    .line 113
    return-void
.end method

.method public setPortRestrictedCone()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->portRestrictedCone:Z

    .line 117
    return-void
.end method

.method public setPublicIP(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "publicIP"

    .prologue
    .line 120
    iput-object p1, p0, Lde/javawi/jstun/test/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    .line 121
    return-void
.end method

.method public setRestrictedCone()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->restrictedCone:Z

    .line 125
    return-void
.end method

.method public setSymmetric()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetric:Z

    .line 129
    return-void
.end method

.method public setSymmetricUDPFirewall()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetricUDPFirewall:Z

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v2, "Network interface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :try_start_0
    iget-object v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v2, "Local IP address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->error:Z

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lde/javawi/jstun/test/DiscoveryInfo;->errorReason:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Responsecode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lde/javawi/jstun/test/DiscoveryInfo;->errorResponseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :goto_1
    return-object v2

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, se:Ljava/net/SocketException;
    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 152
    .end local v1           #se:Ljava/net/SocketException;
    :cond_0
    const-string v2, "Result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->openAccess:Z

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "Open access to the Internet.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :cond_1
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->blockedUDP:Z

    if-eqz v2, :cond_2

    .line 157
    const-string v2, "Firewall blocks UDP.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_2
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->fullCone:Z

    if-eqz v2, :cond_3

    .line 160
    const-string v2, "Full Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_3
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->restrictedCone:Z

    if-eqz v2, :cond_4

    .line 163
    const-string v2, "Restricted Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_4
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->portRestrictedCone:Z

    if-eqz v2, :cond_5

    .line 166
    const-string v2, "Port restricted Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_5
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetric:Z

    if-eqz v2, :cond_6

    .line 169
    const-string v2, "Symmetric Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_6
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetricUDPFirewall:Z

    if-eqz v2, :cond_7

    .line 172
    const-string v2, "Symmetric UDP Firewall handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_7
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->openAccess:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->blockedUDP:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->fullCone:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->restrictedCone:Z

    if-nez v2, :cond_8

    .line 175
    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->portRestrictedCone:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetric:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->symmetricUDPFirewall:Z

    if-nez v2, :cond_8

    .line 176
    const-string v2, "unkown\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_8
    const-string v2, "Public IP address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, p0, Lde/javawi/jstun/test/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :goto_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 182
    :cond_9
    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
