.class public Lo/ⁱ$ˏ;
.super Lo/ⁱ$con;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cf"
.end annotation


# instance fields
.field ר:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1729
    invoke-direct {p0}, Lo/ⁱ$con;-><init>()V

    .line 1727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ⁱ$ˏ;->ר:Ljava/util/ArrayList;

    .line 1730
    return-void
.end method
