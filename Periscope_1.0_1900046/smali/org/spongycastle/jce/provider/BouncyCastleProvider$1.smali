.class Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic baL:Lorg/spongycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;->baL:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;->baL:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method
