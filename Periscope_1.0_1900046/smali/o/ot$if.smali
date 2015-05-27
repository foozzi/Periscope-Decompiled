.class final Lo/ot$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field final Uc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field Ud:Z

.field Ue:Z

.field Uf:Lo/pe;

.field Ug:Ljava/lang/Object;

.field canceled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ot$if;->Uc:Ljava/util/List;

    return-void
.end method
