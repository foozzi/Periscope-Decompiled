.class Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile aRl:Z

.field private volatile aaN:I


# virtual methods
.method public run()V
    .locals 2

    .line 19
    :goto_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->aRl:Z

    if-nez v0, :cond_0

    .line 21
    iget v0, p0, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->aaN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->aaN:I

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
