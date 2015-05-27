.class public Lo/agn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajw$if;


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

    .line 1244
    iput-object p1, p0, Lo/agn;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iput-object p2, p0, Lo/agn;->bzC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lo/agn;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iget-object v1, p0, Lo/agn;->bzC:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1248
    return-void
.end method
