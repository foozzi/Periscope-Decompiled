.class public Lo/ve;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bln:Ltv/periscope/android/LaunchActivity;


# direct methods
.method public constructor <init>(Ltv/periscope/android/LaunchActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/ve;->bln:Ltv/periscope/android/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/ve;->bln:Ltv/periscope/android/LaunchActivity;

    const-class v1, Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0, v1}, Ltv/periscope/android/LaunchActivity;->ˊ(Ltv/periscope/android/LaunchActivity;Ljava/lang/Class;)V

    .line 71
    return-void
.end method
