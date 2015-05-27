.class public Ltv/periscope/android/push/PushClient$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u02cb"
.end annotation


# instance fields
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

.field final synthetic bxP:Ltv/periscope/android/push/PushClient;


# direct methods
.method public constructor <init>(Ltv/periscope/android/push/PushClient;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ltv/periscope/android/push/PushClient$ˋ;->bxP:Ltv/periscope/android/push/PushClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
