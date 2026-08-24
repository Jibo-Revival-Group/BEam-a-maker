.class public final Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;
.super Ljava/lang/Object;
.source "TutorialPreferences.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\n \u0008*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;",
        "",
        "()V",
        "KEY",
        "",
        "getKEY",
        "()Ljava/lang/String;",
        "PREFS_FILENAME",
        "kotlin.jvm.PlatformType",
        "getPREFS_FILENAME",
        "accepted",
        "",
        "context",
        "Landroid/content/Context;",
        "isTutorialAccepted",
        "",
        "rejected",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

# The value of this static final field might be set in the static constructor
.field private static final KEY:Ljava/lang/String; = "TUTORIAL_ACCEPTED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFS_FILENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->INSTANCE:Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->PREFS_FILENAME:Ljava/lang/String;

    .line 13
    const-string v0, "TUTORIAL_ACCEPTED"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accepted(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->PREFS_FILENAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
.end method

.method public final getKEY()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method public final getPREFS_FILENAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->PREFS_FILENAME:Ljava/lang/String;

    return-object v0
.end method

.method public final isTutorialAccepted(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->PREFS_FILENAME:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->KEY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public final rejected(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->PREFS_FILENAME:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->KEY:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method
