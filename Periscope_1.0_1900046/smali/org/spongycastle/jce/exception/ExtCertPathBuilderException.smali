.class public Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/exception/ExtException;


# instance fields
.field private aal:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;->aal:Ljava/lang/Throwable;

    .line 16
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;->aal:Ljava/lang/Throwable;

    return-object v0
.end method