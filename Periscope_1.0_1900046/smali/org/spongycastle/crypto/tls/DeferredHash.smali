.class Lorg/spongycastle/crypto/tls/DeferredHash;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsHandshakeHash;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field private aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

.field private aTK:Ljava/util/Hashtable;

.field private aTL:Ljava/lang/Short;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/Short;Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iJ()I
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lT()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mC()I

    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 48
    new-instance v2, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v2}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/CombinedHash;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 51
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/CombinedHash;->lT()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->Ỉ(I)S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DeferredHash;->ˊ(Ljava/lang/Short;)V

    .line 58
    return-object p0
.end method

.method public lU()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DeferredHash;->ml()V

    .line 74
    return-void
.end method

.method public lV()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 5

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 83
    :cond_0
    new-instance v4, Lorg/spongycastle/crypto/tls/DeferredHash;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-direct {v4, v0, v3}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>(Ljava/lang/Short;Lorg/spongycastle/crypto/Digest;)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-virtual {v4, v0}, Lorg/spongycastle/crypto/tls/DeferredHash;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 85
    return-object v4
.end method

.method public lW()Lorg/spongycastle/crypto/Digest;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DeferredHash;->ml()V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 96
    return-object v3

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTL:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method protected ml()V
    .locals 4

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 189
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    move-object v3, v0

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 197
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->reset()V

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 177
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    move-object v2, v0

    .line 180
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 181
    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->write(I)V

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    move-object v2, v0

    .line 143
    invoke-interface {v2, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->write([BII)V

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 156
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    move-object v2, v0

    .line 159
    invoke-interface {v2, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method protected ˊ(Ljava/lang/Short;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 41
    return-void
.end method

.method public ˎ(S)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to track more hash algorithms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DeferredHash;->ˊ(Ljava/lang/Short;)V

    .line 69
    return-void
.end method

.method public ˏ(S)[B
    .locals 5

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTK:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    move-object v3, v0

    .line 105
    if-nez v3, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashAlgorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not being tracked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-static {p1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->aTJ:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 116
    :cond_1
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 117
    const/4 v0, 0x0

    invoke-interface {v3, v4, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 118
    return-object v4
.end method
