.class public Lo/aef$ˎ;
.super Lo/aef;
.source ""

# interfaces
.implements Lo/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$\u02ce;>;Lo/bt;"
    }
.end annotation


# instance fields
.field public final bzN:Lo/bq;

.field private bzO:Lo/bo;

.field private bzP:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method private constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 71
    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/bq;

    iput-object v0, p0, Lo/aef$ˎ;->bzN:Lo/bq;

    .line 72
    invoke-direct {p0}, Lo/aef$ˎ;->xx()V

    .line 73
    return-void
.end method

.method private xx()V
    .locals 2

    .line 94
    iget-object v0, p0, Lo/aef$ˎ;->bzN:Lo/bq;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/aef$ˎ;->bzN:Lo/bq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bq;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lo/aef$ˎ;->bzN:Lo/bq;

    invoke-virtual {v0}, Lo/bq;->onResume()V

    .line 99
    iget-object v0, p0, Lo/aef$ˎ;->bzN:Lo/bq;

    invoke-virtual {v0, p0}, Lo/bq;->ˊ(Lo/bt;)V

    .line 101
    :cond_0
    return-void
.end method

.method private ʾ(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .line 104
    iput-object p1, p0, Lo/aef$ˎ;->bzP:Lcom/google/android/gms/maps/model/LatLng;

    .line 105
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    if-eqz v0, :cond_1

    .line 106
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    invoke-static {p1}, Lo/bn;->ˊ(Lcom/google/android/gms/maps/model/LatLng;)Lo/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/bo;->ˊ(Lo/bm;)V

    .line 109
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->ͺ(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 110
    const v0, 0x7f0200c8

    invoke-static {v0}, Lo/dg;->Ɨ(I)Lo/df;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ˊ(Lo/df;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 111
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    invoke-virtual {v0, v2}, Lo/bo;->ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;)Lo/dh;

    .line 114
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/bo;->ł(I)V

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    invoke-virtual {v0}, Lo/bo;->clear()V

    .line 117
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bo;->ł(I)V

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method public static ˏ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˎ;
    .locals 4

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 62
    new-instance v0, Lo/aef$ˎ;

    invoke-direct {v0, v3, p2}, Lo/aef$ˎ;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/aeh$ˎ;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lo/aeh$ˎ;->xB()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/aef$ˎ;->ʾ(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 125
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 57
    move-object v0, p1

    check-cast v0, Lo/aeh$ˎ;

    invoke-virtual {p0, v0}, Lo/aef$ˎ;->ˊ(Lo/aeh$ˎ;)V

    return-void
.end method

.method public ˊ(Lo/bo;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/aef$ˎ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/bs;->ﹺ(Landroid/content/Context;)I

    .line 78
    iput-object p1, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    .line 79
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    invoke-virtual {v0}, Lo/bo;->Ғ()Lo/bu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bu;->ː(Z)V

    .line 80
    iget-object v0, p0, Lo/aef$ˎ;->bzO:Lo/bo;

    new-instance v1, Lo/aeg;

    invoke-direct {v1, p0}, Lo/aeg;-><init>(Lo/aef$ˎ;)V

    invoke-virtual {v0, v1}, Lo/bo;->ˊ(Lo/bo$if;)V

    .line 87
    iget-object v0, p0, Lo/aef$ˎ;->bzP:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v0}, Lo/aef$ˎ;->ʾ(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 88
    return-void
.end method
