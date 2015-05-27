.class public Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final aQM:Ljava/security/SecureRandom;

.field private final aQN:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->aQM:Ljava/security/SecureRandom;

    .line 23
    iput-boolean p2, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->aQN:Z

    .line 24
    return-void
.end method

.method static synthetic ˊ(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->aQM:Ljava/security/SecureRandom;

    return-object v0
.end method
