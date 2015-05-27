.class Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
.super Ljava/security/cert/CertificateException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExCertificateException"
.end annotation


# instance fields
.field final synthetic aXY:Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field private aal:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->aXY:Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 380
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->aal:Ljava/lang/Throwable;

    .line 381
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->aal:Ljava/lang/Throwable;

    return-object v0
.end method
