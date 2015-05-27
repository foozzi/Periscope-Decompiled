.class Lorg/spongycastle/x509/X509Util$Implementation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/x509/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Implementation"
.end annotation


# instance fields
.field bkZ:Ljava/lang/Object;

.field bla:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lorg/spongycastle/x509/X509Util$Implementation;->bkZ:Ljava/lang/Object;

    .line 294
    iput-object p2, p0, Lorg/spongycastle/x509/X509Util$Implementation;->bla:Ljava/security/Provider;

    .line 295
    return-void
.end method


# virtual methods
.method getProvider()Ljava/security/Provider;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/spongycastle/x509/X509Util$Implementation;->bla:Ljava/security/Provider;

    return-object v0
.end method

.method tG()Ljava/lang/Object;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/x509/X509Util$Implementation;->bkZ:Ljava/lang/Object;

    return-object v0
.end method
