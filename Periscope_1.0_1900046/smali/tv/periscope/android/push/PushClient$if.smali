.class public Ltv/periscope/android/push/PushClient$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public Qn:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "token"
    .end annotation
.end field

.field public boC:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "vendor_id"
    .end annotation
.end field

.field public bpu:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "cookie"
    .end annotation
.end field

.field public bqc:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "install_id"
    .end annotation
.end field

.field public bxK:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "bundle_id"
    .end annotation
.end field

.field public bxL:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "os"
    .end annotation
.end field

.field public bxM:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "build"
    .end annotation
.end field

.field public bxN:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "device_type"
    .end annotation
.end field

.field public bxO:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "model"
    .end annotation
.end field

.field final synthetic bxP:Ltv/periscope/android/push/PushClient;


# direct methods
.method public constructor <init>(Ltv/periscope/android/push/PushClient;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ltv/periscope/android/push/PushClient$if;->bxP:Ltv/periscope/android/push/PushClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
