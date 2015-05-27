.class public Lo/agm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

.field final synthetic bzC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lo/agm;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iput-object p2, p0, Lo/agm;->bzC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1232
    if-nez p2, :cond_0

    .line 1233
    iget-object v0, p0, Lo/agm;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iget-object v1, p0, Lo/agm;->bzC:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1235
    iget-object v0, p0, Lo/agm;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iget-object v1, p0, Lo/agm;->bzC:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V

    .line 1237
    :cond_1
    :goto_0
    return-void
.end method
