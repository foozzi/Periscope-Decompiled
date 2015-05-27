.class public Lo/agl;
.super Lo/adj;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lo/agl;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    return-void
.end method


# virtual methods
.method public ƚ(Ljava/lang/String;)V
    .locals 1

    .line 436
    invoke-super {p0, p1}, Lo/adj;->ƚ(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lo/agl;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʹ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/afq;

    move-result-object v0

    invoke-virtual {v0}, Lo/afq;->yR()V

    .line 438
    return-void
.end method
