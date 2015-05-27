.class public final Lo/չ$ˋ;
.super Lo/չ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/չ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02cb"
.end annotation


# instance fields
.field public final AI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field public final responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;Lo/к;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;Lo/\u043a;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lo/չ$if;-><init>(Ljava/lang/String;Lo/к;)V

    .line 111
    iput p1, p0, Lo/չ$ˋ;->responseCode:I

    .line 112
    iput-object p2, p0, Lo/չ$ˋ;->AI:Ljava/util/Map;

    .line 113
    return-void
.end method
