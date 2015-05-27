.class abstract Lo/ik$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "\u02ca"
.end annotation


# instance fields
.field final LX:Z

.field final LY:Z

.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lo/ik$ˊ;->name:Ljava/lang/String;

    .line 163
    iput-boolean p2, p0, Lo/ik$ˊ;->LX:Z

    .line 164
    iput-boolean p3, p0, Lo/ik$ˊ;->LY:Z

    .line 165
    return-void
.end method


# virtual methods
.method abstract ı(Ljava/lang/Object;)Z
.end method

.method abstract ˊ(Lo/jz;Ljava/lang/Object;)V
.end method

.method abstract ˊ(Lo/kc;Ljava/lang/Object;)V
.end method
