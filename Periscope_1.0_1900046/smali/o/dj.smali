.class public Lo/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lo/dk;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic JA:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private final Jz:Lo/dw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    iput-object p1, p0, Lo/dj;->JA:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lo/dj;->JA:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ˋ(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lo/dw;

    move-result-object v0

    iput-object v0, p0, Lo/dj;->Jz:Lo/dw;

    return-void
.end method
