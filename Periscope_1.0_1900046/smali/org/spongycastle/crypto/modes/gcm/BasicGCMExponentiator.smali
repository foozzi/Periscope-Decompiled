.class public Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private aLJ:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 1

    .line 11
    invoke-static {p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ᵋ([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->aLJ:[I

    .line 12
    return-void
.end method

.method public ˋ(J[B)V
    .locals 6

    .line 17
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->kn()[I

    move-result-object v4

    .line 19
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v5

    .line 24
    :cond_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    invoke-static {v4, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([I[I)V

    .line 28
    :cond_1
    invoke-static {v5, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([I[I)V

    .line 29
    const/4 v0, 0x1

    ushr-long/2addr p1, v0

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 34
    :cond_2
    invoke-static {v4, p3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˊ([I[B)V

    .line 35
    return-void
.end method
