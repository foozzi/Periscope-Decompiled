.class public Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private aPG:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ʷ(I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 46
    if-gt v2, p1, :cond_1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    move-object v3, v0

    .line 51
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v3

    .line 52
    invoke-static {v3, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([I[I)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    if-le v2, p1, :cond_0

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 3

    .line 15
    invoke-static {p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ᵋ([B)[I

    move-result-object v2

    .line 16
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v2, v0}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public ˋ(J[B)V
    .locals 6

    .line 27
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->kn()[I

    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 31
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->ʷ(I)V

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->aPG:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([I[I)V

    .line 36
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 37
    const/4 v0, 0x1

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v4, p3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˊ([I[B)V

    .line 41
    return-void
.end method