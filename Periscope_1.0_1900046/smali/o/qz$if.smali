.class Lo/qz$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final WS:Lo/qz;

.field final WT:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lo/qz;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/qz;[TData;)V"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lo/qz$if;->WS:Lo/qz;

    .line 677
    iput-object p2, p0, Lo/qz$if;->WT:[Ljava/lang/Object;

    .line 678
    return-void
.end method
