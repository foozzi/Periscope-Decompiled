.class public Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private aFR:[B


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
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;->aFR:[B

    .line 12
    return-void
.end method

.method public ᵀ([B)V
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;->aFR:[B

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ι([B[B)V

    .line 17
    return-void
.end method
